bin_SCRIPTS = iptables-helper$(EXEEXT)

ACLOCAL_AMFLAGS = -I m4

PACKAGES =
LIBS     =

iptables-helper$(EXEEXT): iptables-helper.cmo
	$(OCAMLFIND) ocamlc $(PACKAGES) $(LIBS) $^ -o $@

.ml.cmo:
	ocamlfind ocamlc $(PACKAGES) -dtypes -c $< -o $@

EXTRA_DIST = iptables-helper.ml

CLEANFILES = *.cmi *.cmo $(bin_SCRIPTS) *~
