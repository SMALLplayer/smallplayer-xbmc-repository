ADDON_NAME=repository.smallplayer
ZIP_CONTENTS=addon.xml

$(ADDON_NAME).zip: $(ZIP_CONTENTS)
	rm -f $(ADDON_NAME).zip
	cd .. && zip $(ADDON_NAME)/$(ADDON_NAME).zip $(addprefix $(ADDON_NAME)/,$(ZIP_CONTENTS))
