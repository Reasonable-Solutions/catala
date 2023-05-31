# Stage 1: setup an opam switch with all dependencies installed
# (only depends on the opam files)
FROM ocamlpro/ocaml:4.14-2023-04-02 AS dev-build-context

# pandoc and ninja are not in alpine stable yet, install it manually with an explicit repository
RUN sudo apk add pandoc --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
# In order to compiler rescript for `npm install` in french_law/js we need
# the following dependencies (according to https://github.com/GlancingMind/rescript-alpine-docker)
RUN sudo apk add python --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
RUN sudo apk add g++ --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
RUN sudo apk add make --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

RUN mkdir catala
WORKDIR catala

# Get only the opam files at this stage to allow caching
ADD --chown=ocaml:ocaml *.opam ./

# trigger the selection of catala dev tools in opam
ENV OPAMVAR_cataladevmode=1
ENV OPAMVAR_catalaz3mode=1

# Get a switch with all the dependencies installed
RUN opam --cli=2.1 update && \
    opam --cli=2.1 switch create catala ocaml-system && \
    opam --cli=2.1 pin . --no-action && \
    opam --cli=2.1 install . --with-test --with-doc --depext-only && \
    opam --cli=2.1 install . --with-test --with-doc --deps-only && \
    opam clean
# Note: just one `opam switch create .` command should be enough once opam 2.1.3 is released (opam#5047 ; opam#5185)


# Stage 2: get the whole repo, run checks and builds
FROM dev-build-context

# Get the full repo
ADD --chown=ocaml:ocaml . .

# Prepare extra local dependencies
RUN opam exec -- make dependencies-python dependencies-js pygments

# OCaml backtraces may be useful on failure
ENV OCAMLRUNPARAM=b
# Make sure warnings are treated as errors (variable used in Makefile, profile
# defined in ./dune)
ENV DUNE_PROFILE=check

# Check promoted files (but delay failure)
RUN opam exec -- make check-promoted > promotion.out 2>&1 || touch bad-promote

# Check the build
RUN opam exec -- make build

# Check tests & all alt targets
RUN OCAMLRUNPARAM=b opam exec -- make all -B

# Forward results of promotion check
RUN if [ -e bad-promote ]; then \
  echo "[ERROR] Some promoted files were not up-to-date"; \
  cat promotion.out; \
  exit 1; \
fi
