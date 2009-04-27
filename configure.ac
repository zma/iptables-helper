AC_INIT(ocaml-autoconf,1.0)
AM_INIT_AUTOMAKE

AC_PROG_CC

AC_PROG_OCAML
if test "$OCAMLC" = "no"; then
  AC_MSG_ERROR([Please install the OCaml compiler])
fi

AC_PROG_FINDLIB
if test "$OCAMLFIND" = "no"; then
  AC_MSG_ERROR([Please install OCaml findlib (the ocamlfind command)])
fi

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
