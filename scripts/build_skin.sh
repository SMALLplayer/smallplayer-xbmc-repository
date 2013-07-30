#!/bin/bash

ADDON="skin.smallplayer"
SRC=../src/"$ADDON"
BUILD=../build/"$ADDON"

CONTENT="$SRC"/VERSION\ "$SRC"/addon.xml\ "$SRC"/720p\ "$SRC"/backgrounds\ "$SRC"/colors\ "$SRC"/fonts\ "$SRC"/icon.png\ "$SRC"/language\ "$SRC"/sounds
VERSION=`cat "$SRC"/VERSION`

# Cleanup build dir
rm -rf "$BUILD"
mkdir -p "$BUILD"

# Create textures
make clean -C "$SRC"/media
make -C "$SRC"/media
mkdir -p "$BUILD"/media
mv "$SRC"/media/*.xbt "$BUILD"/media/

# Copy files
cp -r $CONTENT $BUILD

# Insert version number
sed -i 's/<!-- versionnum -->/'$VERSION'/g' $BUILD/addon.xml

