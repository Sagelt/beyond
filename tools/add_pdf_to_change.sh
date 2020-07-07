#!/bin/sh

rootdir=`git rev-parse --show-toplevel`

pandoc \
  $rootdir/text/introduction.md \
  $rootdir/text/wizard/wizard.md \
  --pdf-engine=xelatex \
  -V 'mainfont:AveriaSerifLibre-Regular' \
  -o $rootdir/release/Beyond.pdf

git add $rootdir/release/Beyond.pdf