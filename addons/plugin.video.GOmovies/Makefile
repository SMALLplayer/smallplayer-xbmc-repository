DL_URL=https://github.com/lambda81/lambda-xbmc-addons/raw/master/repo/plugin.video.GOmovies
DL_NAME=plugin.video.GOmovies
DL_VER=1.0.0

DL_ZIP=download/$(DL_NAME)-$(DL_VER).zip
AD_ZIP=$(DL_NAME)-$(DL_VER).zip

.PHONY: clean

$(AD_ZIP): $(DL_NAME)
	rm -f $(AD_ZIP)
	zip -rXq $(AD_ZIP) $(DL_NAME)

$(DL_NAME): $(DL_ZIP)
	rm -rf $(DL_NAME)
	unzip -q $(DL_ZIP)

$(DL_ZIP):
	mkdir -p download
	cd download && wget $(DL_URL)/$(DL_NAME)-$(DL_VER).zip

clean:
	rm -f $(AD_ZIP)
	rm -rf $(DL_NAME)
