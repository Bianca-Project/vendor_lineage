PRODUCT_BRAND := BiancaProject
VERSION := 1.4
OTA_VERSION := 11

# Official tag
ifeq ($(BIANCA_OFFICIAL), true)
    BIANCA_BUILDTYPE := OFFICIAL
else
    BIANCA_BUILDTYPE := UNOFFICIAL
endif

BIANCA_VERSION := $(PRODUCT_BRAND)-v$(VERSION)-$(BIANCA_BUILDTYPE)-$(BIANCA_BUILD)-$(shell date +%d%m%Y-%H%M)
LINEAGE_VERSION := $(BIANCA_VERSION)
LINEAGE_DISPLAY_VERSION := $(PRODUCT_BRAND)-v$(VERSION)-$(BIANCA_BUILDTYPE)-$(BIANCA_BUILD)
