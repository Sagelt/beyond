#!/bin/sh

rootdir=`git rev-parse --show-toplevel`
files_to_compile=`$rootdir/tools/get_files_to_compile.sh`

pandoc \
  $files_to_compile \
  --pdf-engine=xelatex \
  -V 'mainfont:AveriaSerifLibre-Regular' \
  -o $rootdir/release/Beyond.pdf

git add $rootdir/release/Beyond.pdf