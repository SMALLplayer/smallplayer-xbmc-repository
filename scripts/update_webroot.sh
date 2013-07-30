#!/bin/bash

echo Creating repository.smallplayer.zip
mkdir -p ../web
rm -f ../web/repository.smallplayer.zip
zip ../web/repository.smallplayer.zip ../src/repository.smallplayer -rXq

cd ../build
for ADDON in * ; do
  if [ -d "$ADDON" ]; then
    VER=`cat "$ADDON"/VERSION`
    echo Creating "$ADDON"-"$VER".zip
    mkdir -p ../web/"$ADDON"
    rm -rf ../web/"$ADDON"/"$ADDON"="$VER"
    zip ../web/"$ADDON"/"$ADDON"-"$VER".zip "$ADDON" -rXq
  fi
done

python ../scripts/addons_xml_generator.py
mv addons.* ../web/
cd - > /dev/null
