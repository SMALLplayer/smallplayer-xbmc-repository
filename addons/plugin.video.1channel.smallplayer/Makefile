DL_URL=http://superrepo.brantje.com/Frodo/All/plugin.video.1channel
DL_NAME=plugin.video.1channel
DL_VER=2.0.2
DL_DESC=1Channel

AD_VER=2.0.2b
AD_NAME=$(DL_NAME).smallplayer
AD_DESC=Online: 1Channel

DL_ZIP=download/$(DL_NAME)-$(DL_VER).zip
AD_ZIP=$(AD_NAME)-$(AD_VER).zip

.PHONY: clean

$(AD_ZIP): $(AD_NAME)
	rm -f $(AD_ZIP)
	zip -rXq $(AD_ZIP) $(AD_NAME)

$(AD_NAME): $(DL_ZIP) $(wildcard *.patch)
	rm -rf $(AD_NAME)
	unzip -q $(DL_ZIP)
	mv $(DL_NAME) $(AD_NAME)
	cd $(AD_NAME) && ../patch_addon.sh $(DL_NAME) $(AD_NAME)
	sed -i 's/$(DL_DESC)/$(AD_DESC)/' $(AD_NAME)/addon.xml
	sed -i 's/$(DL_VER)/$(AD_VER)/' $(AD_NAME)/addon.xml

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_NAME).zip
	rm -rf $(AD_NAME)
