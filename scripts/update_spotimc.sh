#!/bin/bash
URL=http://azkotoki.org/download-file/28
ADDON=script.audio.spotimc
VER=1.0-beta4
FILE=script-audio-spotimc-1-0-beta4

BUILD=../build

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION
