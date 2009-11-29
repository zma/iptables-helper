#! /bin/sh

# Run this file with no arguments to set up your development environment

aclocal -I m4
automake --add-missing
autoconf
