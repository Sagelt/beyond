#!/bin/sh

rootdir=`git rev-parse --show-toplevel`

pandoc \
  $rootdir/index.md \
  --metadata-file $rootdir/text/common/metadata.yml \
  --pdf-engine=xelatex \
  -V 'mainfont:AveriaSerifLibre-Regular' \
  -o $rootdir/release/Beyond.pdf

git add $rootdir/release/Beyond.pdf