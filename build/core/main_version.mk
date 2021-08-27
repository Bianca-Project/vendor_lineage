# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# BiancaProject System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.bianca.version=$(BIANCA_VERSION) \
    ro.bianca.ota.version=$(OTA_VERSION) \
    ro.bianca.releasetype=$(BIANCA_BUILDTYPE) \
    ro.bianca.build.version=v$(VERSION) \
    ro.modversion=$(BIANCA_VERSION)

# LineageOS Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
