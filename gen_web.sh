#!/bin/bash

rm web -rf
mkdir -p web
echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > web/addons.xml
echo '<addons>' >> web/addons.xml

for addon_path in addons/*; do
  if [ -d $addon_path -a "$addon_path" != "addons/repository.smallplayer" ]; then
    addon=$(basename $addon_path)
    mkdir -p web/$addon
    cp addons/$addon/"$addon"*.zip web/$addon
    cp addons/$addon/$addon/fanart.jpg web/$addon &>/dev/null
    cp addons/$addon/$addon/icon.png web/$addon &>/dev/null
    cp addons/$addon/$addon/changelog.txt web/$addon &>/dev/null
    cat addons/$addon/$addon/addon.xml | grep -v "<?xml" >> web/addons.xml
  fi
done

cp addons/repository.smallplayer/repository.smallplayer*.zip web/

echo "</addons>" >> web/addons.xml
md5sum web/addons.xml | sed 's/\([\ ^]\) .*/\1/' > web/addons.xml.md5
