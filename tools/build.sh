#!/bin/sh

rootdir=`git rev-parse --show-toplevel`
toolsdir="$rootdir/tools"

$toolsdir/update_version_numbers.sh
$toolsdir/add_markdown_to_change.sh
$toolsdir/add_pdf_to_change.sh