open Ocamlbuild_pack
open Ocamlbuild_plugin

let _ = dispatch & function
  | After_rules ->
    flag ["ocaml";"byte";"link"] (S[A"-custom"]);
    dep ["ocaml";"link";"is_main"]["libjerasure.a"];
    dep  ["compile"; "c"] ["jerasure/galois.h"];    
    flag ["ocaml";"link";"is_main"](
      S[A"-thread";
        A"-linkpkg";
        A"libjerasure.a";
       ]);
  | _ -> ()
    
