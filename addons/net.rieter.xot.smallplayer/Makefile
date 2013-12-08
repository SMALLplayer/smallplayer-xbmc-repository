DL_URL=http://xot.hamans.com
DL_NAME=net.rieter.xot
DL_VER=3.4.0
DL_DESC=XOT-Uzg.v3

AD_NAME=$(DL_NAME).smallplayer
AD_DESC=Online: Uitzending Gemist

DL_ZIP=download/$(DL_NAME)-$(DL_VER).zip
AD_ZIP=$(AD_NAME)-$(DL_VER).zip

.PHONY: clean

$(AD_ZIP): $(AD_NAME)
	rm -f $(AD_ZIP).zip
	zip -rXq $(AD_ZIP) $(AD_NAME)

$(AD_NAME): $(DL_ZIP) $(wildcard *.patch)
	rm -rf $(AD_NAME)
	unzip -q $(DL_ZIP)
	mv $(DL_NAME) $(AD_NAME)
	rm -rf $(AD_NAME)/deploy/net.rieter.xot.channel.mtg
	rm -rf $(AD_NAME)/deploy/net.rieter.xot.channel.se
	rm -rf $(AD_NAME)/resources/skins/skin.xot
	dos2unix $(AD_NAME)/addon.xml 
	patch $(AD_NAME)/addon.xml < addon.xml.patch
	dos2unix $(AD_NAME)/resources/libs/envcontroller.py
	patch $(AD_NAME)/resources/libs/envcontroller.py < envcontroller.py.patch
	sed -i 's/$(DL_NAME)/$(AD_NAME)/' $(AD_NAME)/addon.xml
	sed -i 's/$(DL_DESC)/$(AD_DESC)/' $(AD_NAME)/addon.xml

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_NAME).zip
	rm -rf $(AD_NAME)

