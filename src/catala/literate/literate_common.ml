(* This file is part of the Catala compiler, a specification language for tax and social benefits
   computation rules. Copyright (C) 2020 Inria, contributor: Emile Rolley <emile.rolley@tuta.io>

   Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
   in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software distributed under the License
   is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
   or implied. See the License for the specific language governing permissions and limitations under
   the License. *)

open Utils
open Cli

let literal_title = function
  | En -> "Legislative text implementation"
  | Fr -> "Implémentation de texte législatif"
  | Pl -> "Implementacja tekstów legislacyjnych"

let literal_generated_by = function
  | En -> "Document generated by"
  | Fr -> "Document généré par"
  | Pl -> "Dokument wygenerowany przez"

let literal_source_files = function
  | En -> "Source files weaved in this document"
  | Fr -> "Fichiers sources tissés dans ce document"
  | Pl -> "Pliki źródłowe w tym dokumencie"

let literal_last_modification = function
  | En -> "last modification"
  | Fr -> "dernière modification le"
  | Pl -> "ostatnia modyfikacja"

let get_language_extension = function Fr -> "catala_fr" | En -> "catala_en" | Pl -> "catala_pl"
