build:
	ocamlbuild -use-ocamlfind \
	 camljerasure.cmi \
	 camljerasure.cmxa \
	 camljerasure.cma \
	 galois_test.native \
	 galois_test.byte

install:
	ocamlfind install camljerasure META \
	 _build/camljerasure.cmxa \
	 _build/camljerasure.cma \
	 _build/libjerasure.a \
	 _build/camljerasure.a

uninstall:
	ocamlfind remove camljerasure 

clean:
	ocamlbuild -use-ocamlfind -clean
default: build
