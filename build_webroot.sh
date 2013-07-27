#!/bin/bash
echo Creating repository.smallplayer.zip
mkdir web
rm web/repository.smallplayer.zip
zip web/repository.smallplayer.zip repository.smallplayer -r -X

echo Creating skin.smallplayer-0.0.1.zip
mkdir web/skin.smallplayer
cd repo
rm ../web/skin.smallplayer/skin.smallplayer-0.0.1.zip
zip ../web/skin.smallplayer/skin.smallplayer-0.0.1.zip skin.smallplayer -r -X
python ../addons_xml_generator.py
mv addons.* ../web/
cd ..
