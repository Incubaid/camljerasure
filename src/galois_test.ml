open Camljerasure

let test_mult () = 
  let tests = [
    (3,7,9,4);
    (1234567,2345678,1404360778, 32);
  ]
  in
  let test_one (a,b,r,w) = 
    let cr = Galois.single_multiply a b w in
    let msg = Printf.sprintf "[%i * %i]_(w=%i) = %i <> %i\n" a b w cr r in
    OUnit.assert_equal cr r ~msg
  in
  List.iter test_one tests

    

let test_div () = 
  let tests = [
    (9,3,7, 4);
    (9,7,3, 4);
    (1404360778,1234567,2345678, 32);
    (1404360778,2345678,1234567, 32);
  ]
  in
  let test_one (a,b,r,w) = 
    let cr = Galois.single_divide a b w in
    let msg = Printf.sprintf "[%i / %i]_(w=%i) = %i <> %i\n" a b w cr r in
    OUnit.assert_equal cr r ~msg
  in
  List.iter test_one tests

let test_inverse () = 
  let tests = [
    (1404360778, 106460795, 32);
  ]
  in
  let test_one (x,ix,w) = 
    let cix = Galois.inverse x w in
    let msg = Printf.sprintf "inv(%i)_(w=%i) = %i <> %i\n" x w cix ix in
    OUnit.assert_equal ix cix ~msg
  in
  List.iter test_one tests


open OUnit

let galois = "Galois" >::: [ "mult"    >:: test_mult;
                             "div"     >:: test_div;
                             "inverse" >:: test_inverse;
                           ]
let suite = "Jerasure" >::: [galois]

let _ = run_test_tt_main suite
