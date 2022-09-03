ifneq ($(wildcard certs/releasekey.*),)
PROD_CERTS := certs
endif

BUILD_ID_LC ?= $(shell echo $(BUILD_ID) | tr '[:upper:]' '[:lower:]')

PRODUCT_HOST_PACKAGES += \
    sign_target_files_apks \
    ota_from_target_files

