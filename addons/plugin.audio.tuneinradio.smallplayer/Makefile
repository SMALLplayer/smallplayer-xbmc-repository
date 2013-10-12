DL_URL=https://github.com/downloads/brianhornsby/plugin.audio.tuneinradio
DL_NAME=plugin.audio.tuneinradio
DL_VER=1.0.7
DL_DESC=TuneIn Radio

AD_NAME=$(DL_NAME).smallplayer
AD_DESC=Online: TuneIn Radio

DL_ZIP=download/$(DL_NAME)-$(DL_VER).zip

.PHONY: clean

$(AD_NAME).zip: $(AD_NAME)
	rm -f $(AD_NAME).zip
	zip -rXq $(AD_NAME).zip $(AD_NAME)

$(AD_NAME): $(DL_ZIP) $(wildcard *.patch)
	rm -rf $(AD_NAME)
	unzip -q $(DL_ZIP)
	mv $(DL_NAME) $(AD_NAME)
	sed -i 's/$(DL_NAME)/$(AD_NAME)/' $(AD_NAME)/addon.xml
	sed -i 's/$(DL_DESC)/$(AD_DESC)/' $(AD_NAME)/addon.xml

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_NAME).zip
	rm -rf $(AD_NAME)
