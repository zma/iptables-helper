bin_SCRIPTS = iptables-helper$(EXEEXT)

PACKAGES = 
LIBS     = 

iptables-helper$(EXEEXT): iptables-helper.cmo
	$(OCAMLFIND) ocamlc $(PACKAGES) $(LIBS) $^ -o $@

.ml.cmo:
	ocamlfind ocamlc $(PACKAGES) -c $< -o $@

EXTRA_DIST = iptables-helper.ml

CLEANFILES = *.cmi *.cmo $(bin_SCRIPTS) *~
