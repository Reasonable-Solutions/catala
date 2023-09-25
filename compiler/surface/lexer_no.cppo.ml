(* -*- coding: iso-latin-1 -*- *)

(* This file is part of the Catala compiler, a specification language for tax and social benefits
   computation rules. Copyright (C) 2020 Inria, contributors: Denis Merigoux
   <denis.merigoux@inria.fr>, Emile Rolley <emile.rolley@tuta.io>

   Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
   in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software distributed under the License
   is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
   or implied. See the License for the specific language governing permissions and limitations under
   the License. *)

(* Defining the lexer macros for English *)

(* Tokens and their corresponding sedlex regexps *)

#define MS_SCOPE "omfang"
#define MS_CONSEQUENCE "konsekvens"
#define MS_DATA "data"
#define MS_DEPENDS "avhenger av"
#define MR_DEPENDS "avhenger", space_plus, "av"
#define MS_DECLARATION "erklaering"
#define MS_CONTEXT "kontekts"
#define MS_DECREASING "synkende"
#define MS_INCREASING  "økende"
#define MS_OF "av"
#define MS_COLLECTION "samling"
#define MS_CONTAINS "inneholder"
#define MS_ENUM "opplisting"
#define MS_INTEGER "heltall"
#define MS_MONEY "penger"
#define MS_TEXT "tekst"
#define MS_DECIMAL "desimal"
#define MS_DATE "dato"
#define MS_DURATION "varighet"
#define MS_BOOLEAN "boolesk"
#define MS_SUM "sum"
#define MS_FILLED "oppfylt"
#define MS_DEFINITION "definisjon"
#define MS_STATE "tilstand"
#define MS_LABEL "etikett"
#define MS_EXCEPTION "unntak"
#define MS_DEFINED_AS "er lik"
#define MR_DEFINED_AS "er", space_plus, "lik"
#define MS_MATCH "matcher"
#define MS_WILDCARD "hvad som helst"
#define MR_WILDCARD "hvad", space_plus, "som", space_plus, "helst"
#define MS_WITH "med mønster"
#define MR_WITH "med", space_plus, "mønster"
#define MS_UNDER_CONDITION "under betingelse"
#define MR_UNDER_CONDITION "under", space_plus, "betingelse"
#define MS_IF "hvis"
#define MS_THEN "så"
#define MS_ELSE "eller"
#define MS_CONDITION "betingelse"
#define MS_CONTENT "innhold"
#define MS_STRUCT "struktur"
#define MS_ASSERTION "påstand"
#define MS_VARIES "varierer"
#define MS_WITH_V "med"
#define MS_FOR "for"
#define MS_ALL "alle"
#define MS_WE_HAVE "vi har"
#define MR_WE_HAVE "vi", space_plus, "har"
#define MS_FIXED "fast"
#define MS_BY "ved"
#define MS_RULE "regel"
#define MS_LET "la"
#define MS_EXISTS "eksisterer"
#define MS_IN "i"
#define MS_AMONG "blant"
#define MS_SUCH "slik"
#define MS_THAT "at"
#define MS_AND "og"
#define MS_OR "eller"
#define MS_XOR "enten eller"
#define MS_NOT "ikke"
#define MS_MAXIMUM "maksimum"
#define MS_MINIMUM "minimum"
#define MS_IS "er"
#define MS_EMPTY "tom"
#define MS_CARDINAL "nummer"
#define MS_YEAR "år"
#define MS_MONTH "måned"
#define MS_DAY "dag"
#define MS_TRUE "sann"
#define MS_FALSE "usann"
#define MS_INPUT "inndata"
#define MS_OUTPUT "utdata"
#define MS_INTERNAL "intern"

(* Specific delimiters *)

#define MS_MONEY_OP_SUFFIX "$"
#define MC_DECIMAL_SEPARATOR '.'
#define MR_MONEY_PREFIX '$', Star hspace
#define MR_MONEY_DELIM ','
#define MR_MONEY_SUFFIX ""

(* Builtins *)

#define MS_Round "avrunding"
#define MS_GetDay "hent_dag"
#define MS_GetMonth "hent_måned"
#define MS_GetYear "hent_år"
#define MS_FirstDayOfMonth "første_dag_i_måned"
#define MS_LastDayOfMonth "siste_dag_i_måned"


(* Directives *)

#define MR_LAW_INCLUDE "Inkludere"
#define MX_AT_PAGE \
'@', Star hspace, "p.", Star hspace, Plus digit -> \
let s = Utf8.lexeme lexbuf in \
let i = String.index s '.' in \
AT_PAGE (int_of_string (String.trim (String.sub s i (String.length s - i))))
