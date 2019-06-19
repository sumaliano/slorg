#!/bin/sh
# Open screen content in an editor to copy text. This is alternative to
# keyboard_select st patch. Set $EDITOR to whatever you want.

tmpfile=$(mktemp /tmp/st-edit.XXXXXX)
sed -n  p > "$tmpfile"
st -e nvim "$tmpfile"
rm "$tmpfile"
