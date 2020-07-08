#!/bin/sh

rootdir=`git rev-parse --show-toplevel`
fullversion=`git describe`
version=`cut -d '-' -f1 <<<$fullversion`

sed \
  -i ""\
  "s/^.*rhead.*$/    \\\\rhead[$version]{$version}/" \
  $rootdir/text/common/metadata.yml

git add $rootdir/text/common/metadata.yml