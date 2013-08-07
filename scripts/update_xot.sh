#!/bin/bash

FILE=net.rieter.xot-3.3.6.zip

URL=http://xot.hamans.com
ADDON=net.rieter.xot
VER=3.3.6

FILE="$ADDON"-"$VER".zip
BUILD=../build
SRC=../src

rm -rf "$BUILD"/"$ADDON"
wget "$URL"/"$FILE"
unzip -q "$FILE" -d "$BUILD"
rm "$FILE"
echo "$VER" > "$BUILD"/"$ADDON"/VERSION

echo Deleting swedish channels
rm -rf "$BUILD"/"$ADDON"/deploy/net.rieter.xot.channel.mtg
rm -rf "$BUILD"/"$ADDON"/deploy/net.rieter.xot.channel.se
echo Deleting plugin skin
rm -rf "$BUILD"/"$ADDON"/resources/skins/skin.xot

echo Patching files
dos2unix "$BUILD"/"$ADDON"/addon.xml 
patch "$BUILD"/"$ADDON"/addon.xml < "$SRC"/"$ADDON"/addon.xml.patch

dos2unix "$BUILD"/"$ADDON"/resources/libs/envcontroller.py
patch "$BUILD"/"$ADDON"/resources/libs/envcontroller.py < "$SRC"/"$ADDON"/envcontroller.py.patch

sed -i 's/<!-- versionnum -->/'$VER'/g' $BUILD/$ADDON/addon.xml

