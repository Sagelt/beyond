#!/bin/sh

rootdir=`git rev-parse --show-toplevel`

echo \
  $rootdir/text/introduction.md \
  $rootdir/text/wizard/wizard.md \
  $rootdir/text/wizard/spellbook.md \