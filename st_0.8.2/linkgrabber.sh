#!/bin/sh
# List the urls on the screen with dmenu and open selection with
# $BROWSER. This script is alternative to copyurl st patch.

regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
url=$(grep -Po "$regex" | rofi -dmenu -l 10 -columns 1) || exit
$BROWSER "$url"
