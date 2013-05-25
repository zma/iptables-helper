bin_SCRIPTS = iptables-helper$(EXEEXT)

ACLOCAL_AMFLAGS = -I m4

PACKAGES =
LIBS     =

iptables-helper$(EXEEXT): IptablesHelper.cmo
	$(OCAMLFIND) ocamlc $(PACKAGES) $(LIBS) $^ -o $@

.ml.cmo:
	ocamlfind ocamlc $(PACKAGES) -dtypes -c $< -o $@

EXTRA_DIST = IptablesHelper.ml

CLEANFILES = *.cmi *.cmo $(bin_SCRIPTS) *~
