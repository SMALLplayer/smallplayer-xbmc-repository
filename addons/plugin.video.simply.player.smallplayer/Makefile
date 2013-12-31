DL_URL=https://github.com/lambda81/lambda-xbmc-addons/raw/master/repo/plugin.video.simply.player
DL_NAME=plugin.video.simply.player
DL_VER=1.2.1

AD_NAME=$(DL_NAME).smallplayer

DL_ZIP=download/$(DL_NAME)-$(DL_VER).zip
AD_ZIP=$(AD_NAME)-$(DL_VER).zip

.PHONY: clean

$(AD_ZIP): $(AD_NAME)
	rm -f $(AD_ZIP)
	zip -rXq $(AD_ZIP) $(AD_NAME)

$(AD_NAME): $(DL_ZIP) $(wildcard *.patch)
	rm -rf $(AD_NAME)
	unzip -q $(DL_ZIP)
	mv $(DL_NAME) $(AD_NAME)
	sed -i 's/$(DL_NAME)/$(AD_NAME)/' $(AD_NAME)/addon.xml

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_ZIP)
	rm -rf $(AD_NAME)
