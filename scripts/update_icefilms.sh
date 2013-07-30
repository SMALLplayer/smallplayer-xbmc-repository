#!/bin/bash
URL=http://anarchintosh-projects.googlecode.com/svn/addons/plugin.video.icefilms
ADDON=plugin.video.icefilms
VER=1.1.34

FILE="$ADDON"-"$VER".zip
BUILD=../build

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION
