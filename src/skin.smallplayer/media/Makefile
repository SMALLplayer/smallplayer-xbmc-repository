TARGET=textures.xbt
XBMCTEX=TexturePacker

IMAGES := $(shell find . -name "*jpg")
IMAGES += $(shell find . -name "*png")
IMAGES += $(shell find . -name "*gif")

all: $(TARGET)

.PHONY: force

$(TARGET): $(IMAGES)
	$(XBMCTEX) -input . -output $(TARGET)

clean:
	rm -f $(TARGET)
distclean: clean
