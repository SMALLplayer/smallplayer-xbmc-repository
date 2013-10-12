SKIN=skin.xperience1080.smallplayer

.PHONY: all

all: $(SKIN)
	@$(MAKE) -C $(SKIN)
	cp $(SKIN)/$(SKIN)*.zip ./

$(SKIN):
	git clone -b Frodo git@github.com:SMALLplayer/$(SKIN).git
