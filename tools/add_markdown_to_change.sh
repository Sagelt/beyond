#!/bin/sh

rootdir=`git rev-parse --show-toplevel`
files_to_compile=`$rootdir/tools/get_files_to_compile.sh`

pandoc \
  $files_to_compile \
  --atx-headers \
  -o $rootdir/index.md

git add $rootdir/index.md