(* This file is part of the Catala compiler, a specification language for tax
   and social benefits computation rules. Copyright (C) 2022 Inria, contributor:
   Aymeric Fromherz <aymeric.fromherz@inria.fr>, Denis Merigoux
   <denis.merigoux@inria.fr>

   Licensed under the Apache License, Version 2.0 (the "License"); you may not
   use this file except in compliance with the License. You may obtain a copy of
   the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
   License for the specific language governing permissions and limitations under
   the License. *)

(** This sub-lib relies on global refs in many places. This should be cleaned
    up. *)

val setup : optimize:bool -> disable_counterexamples:bool -> unit

val optimize : unit -> bool
(** Not sure what that means in this context: does it turn on optimisations in
    the verif backend, or trigger special handling that is dependent on the
    input code having been optimised ?? *)

val disable_counterexamples : unit -> bool
(** This should really be passed along through arguments *)
