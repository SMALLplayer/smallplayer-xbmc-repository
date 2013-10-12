.PHONY: all web empty_phony

all: addons web

empty_phony:

addons: empty_phony
	@$(MAKE) -C addons

web:
	./gen_web.sh
