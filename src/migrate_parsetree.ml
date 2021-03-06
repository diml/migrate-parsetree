(* Shared definitions.
   Mostly errors about features missing in older versions. *)
module Def = Migrate_parsetree_def

(* Copy of OCaml parsetrees *)
module Ast_402 = Ast_402
module Ast_403 = Ast_403
module Ast_404 = Ast_404
module Ast_405 = Ast_405

(* A module for marshalling/unmarshalling arbitrary versions of Asts *)
module Ast_io = Migrate_parsetree_ast_io

(* Manual migration between versions *)
module Migrate_402_403 = Migrate_parsetree_402_403
module Migrate_403_402 = Migrate_parsetree_403_402
module Migrate_403_404 = Migrate_parsetree_403_404
module Migrate_404_403 = Migrate_parsetree_404_403
module Migrate_404_405 = Migrate_parsetree_404_405
module Migrate_405_404 = Migrate_parsetree_405_404

(* An abstraction of OCaml compiler versions *)
module Versions = Migrate_parsetree_versions

(* All versions are compatible with this signature *)
module type OCaml_version = Versions.OCaml_version

module OCaml_402 = Versions.OCaml_402
module OCaml_403 = Versions.OCaml_403
module OCaml_404 = Versions.OCaml_404
module OCaml_405 = Versions.OCaml_405

(* A Functor taking two OCaml versions and producing a module of functions
   migrating from one to the other. *)
module Convert = Versions.Convert
