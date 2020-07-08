#!/bin/sh

rootdir=`git rev-parse --show-toplevel`
files_to_compile=`$rootdir/tools/get_files_to_compile.sh`

pandoc \
  $files_to_compile \
  --atx-headers \
  -s \
  --metadata-file $rootdir/beyond.yml \
  -o $rootdir/index.md

git add $rootdir/index.md