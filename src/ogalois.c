#include <caml/mlvalues.h>
#include "jerasure/galois.h"


value ogalois_single_multiply(value o_x, value o_y, value o_w){
  int x = Int_val(o_x);
  int y = Int_val(o_y);
  int w = Int_val(o_w);
  int r = galois_single_multiply(x,y,w);
  value o_r = Val_int(r);
  return o_r;
}


value ogalois_single_divide(value o_x, value o_y, value o_w){
  int x = Int_val(o_x);
  int y = Int_val(o_y);
  int w = Int_val(o_w);
  int r = galois_single_divide(x,y,w);
  value o_r = Val_int(r);
  return o_r;
}

value ogalois_inverse(value o_x,value o_w){
  int x = Int_val(o_x);
  int w = Int_val(o_w);
  int r = galois_inverse(x,w);
  value o_r = Val_int(r);
  return o_r;
}

value ogalois_log(value o_v, value o_w){
  int v = Int_val(o_v);
  int w = Int_val(o_w);
  int r = galois_log(v,w);
  value o_r = Val_int(r);
  return o_r;
}

