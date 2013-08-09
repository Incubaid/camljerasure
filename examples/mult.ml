open Camljerasure

let () = 
  let a = 3
  and b = 4
  and w = 4
  in
  let p = Galois.single_multiply a b w in
  Printf.printf "[%i * %i]_(w=%i) = %i \n" a b w p
