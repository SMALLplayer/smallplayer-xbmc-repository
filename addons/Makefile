ADDONS:=$(wildcard *.smallplayer plugin.*)

.PHONY: all empty_phony

all: $(ADDONS)

empty_phony:

%.smallplayer: empty_phony
	@$(MAKE) -C $@

