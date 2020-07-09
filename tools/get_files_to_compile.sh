#!/bin/sh

rootdir=`git rev-parse --show-toplevel`

echo \
  $rootdir/text/introduction.md \
  $rootdir/text/rules.md \
  $rootdir/text/core-moves.md \
  $rootdir/text/cleric/cleric.md \
  $rootdir/text/cleric/divine-patronage.md \
  $rootdir/text/fighter/fighter.md \
  $rootdir/text/fighter/signature-weapon.md \
  $rootdir/text/thief/thief.md \
  $rootdir/text/thief/poison-mastery.md \
  $rootdir/text/wizard/wizard.md \
  $rootdir/text/wizard/spellbook.md \
  $rootdir/text/wizard/mystic_patron.md \
  $rootdir/text/bonds.md \
