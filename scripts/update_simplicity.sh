#!/bin/bash
URL=http://mirrors.xbmc.org/addons/frodo/skin.simplicity
ADDON=skin.simplicity
VER=3.3.0

FILE="$ADDON"-"$VER".zip
BUILD=../build

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION
