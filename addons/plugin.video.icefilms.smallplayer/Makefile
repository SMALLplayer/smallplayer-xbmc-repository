DL_URL=http://anarchintosh-projects.googlecode.com/svn/addons/plugin.video.icefilms
DL_NAME=plugin.video.icefilms
DL_VER=1.1.34
DL_DESC=Icefilms

AD_NAME=$(DL_NAME).smallplayer
AD_DESC=Online: Icefilms

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
	sed -i 's/$(DL_DESC)/$(AD_DESC)/' $(AD_NAME)/addon.xml

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_NAME).zip
	rm -rf $(AD_NAME)

