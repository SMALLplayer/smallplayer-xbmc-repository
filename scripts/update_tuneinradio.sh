#!/bin/bash

URL=https://github.com/downloads/brianhornsby/plugin.audio.tuneinradio
ADDON=plugin.audio.tuneinradio
VER=1.0.7

FILE="$ADDON"-"$VER".zip
BUILD=../build

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION
