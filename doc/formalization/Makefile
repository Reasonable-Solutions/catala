FSTAR_HOME?=~/FStar
include $(FSTAR_HOME)/ulib/gmake/z3.mk
include $(FSTAR_HOME)/ulib/gmake/fstar.mk
include $(FSTAR_HOME)/.common.mk
FSTAR=$(FSTAR_HOME)/bin/fstar.exe

#################################################################################
# Customize these variables for your project
#################################################################################

# The root files of your project, from which to begin scanning dependences
FSTAR_FILES ?= Catala.Translation.fst

# The paths to related files which to include for scanning
#   -- No need to add FSTAR_HOME/ulib; it is included by default
INCLUDE_PATHS ?=

# The executable file you want to produce
PROGRAM ?= translate.exe

# A driver in ML to call into your program
TOP_LEVEL_FILE ?=

# A place to put all the emitted .ml files
OUTPUT_DIRECTORY ?= _output

# A place to put all the .checked files
CACHE_DIR ?= _cache

# Set ADMIT=1 to admit queries
ADMIT ?=
MAYBE_ADMIT = $(if $(ADMIT),--admit_smt_queries true)

################################################################################
# YOU SHOULDN'T NEED TO TOUCH THE REST
################################################################################

VERBOSE_FSTAR=$(BENCHMARK_PRE) $(FSTAR)                     \
		  --cache_checked_modules                   \
		  --odir $(OUTPUT_DIRECTORY)                \
		  --cache_dir $(CACHE_DIR)                  \
                  --record_hints --use_hints                \
		  $(addprefix --include , $(INCLUDE_PATHS)) \
		  $(OTHERFLAGS) $(MAYBE_ADMIT)

# As above, but perhaps with --silent
MY_FSTAR=$(VERBOSE_FSTAR) $(SIL)

#--------------------------------------------------------------------------------
# Default target: verify all FSTAR_FILES
#--------------------------------------------------------------------------------

$(CACHE_DIR):
	mkdir -p $@

verify: $(CACHE_DIR) $(addsuffix .checked, $(addprefix $(CACHE_DIR)/, $(FSTAR_FILES)))

#--------------------------------------------------------------------------------
# Include the .depend before any other target
# since we rely on the dependences it computes in other rules
# #
# We do an indirection via ._depend so we don't write an empty file if
# the dependency analysis failed.
#--------------------------------------------------------------------------------
.depend: $(FSTAR_FILES)
	$(Q)$(MY_FSTAR) --dep full $(FSTAR_FILES) > ._depend
	mv ._depend .depend

depend: .depend

include .depend
#--------------------------------------------------------------------------------

# a.fst.checked is the binary, checked version of a.fst
%.fst.checked:
	@echo "[CHECK     $(basename $(notdir $@))]"
	$(Q)$(MY_FSTAR) $<
	@touch -c $@

# a.fsti.checked is the binary, checked version of a.fsti
%.fsti.checked:
	@echo "[CHECK     $(basename $(notdir $@))]"
	$(Q)$(MY_FSTAR) $<
	@touch -c $@

%.fst.output: %.fst
	@echo "[OUTPUT    $(basename $(notdir $@))]"
	$(Q)$(VERBOSE_FSTAR) -f --print_expected_failures $< >$@ 2>&1

%.fsti.output: %.fsti
	@echo "[OUTPUT    $(basename $(notdir $@))]"
	$(Q)$(VERBOSE_FSTAR) -f --print_expected_failures $< >$@ 2>&1

%.fst-in %.fsti-in:
	@echo $(OTHERFLAGS) $(addprefix --include , $(INCLUDE_PATHS))

clean:
	rm -rf $(CACHE_DIR)
	rm -f .depend
