#!/bin/bash
URL=http://superrepo.brantje.com/Frodo/All/plugin.video.simplymovies
ADDON=plugin.video.simplymovies
VER=1.0.9

FILE="$ADDON"-"$VER".zip
BUILD=../build

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION
