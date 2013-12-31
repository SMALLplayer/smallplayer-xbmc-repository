DL_URL=http://azkotoki.org/download-file/28/script-audio-spotimc-1-0-beta4
DL_NAME=script.audio.spotimc
DL_VER=1.0-beta4

AD_NAME=$(DL_NAME).smallplayer

AD_VER=1.0-beta5
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
	sed -i 's/$(DL_VER)/$(AD_VER)/' $(AD_NAME)/addon.xml
	cd $(AD_NAME) && ../../../scripts/patch_addon.sh $(DL_NAME) $(AD_NAME)


$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)
	mv download/script* $(DL_ZIP)

clean:
	rm -f $(AD_NAME).zip
	rm -rf $(AD_NAME)
