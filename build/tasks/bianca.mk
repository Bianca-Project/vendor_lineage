CUSTOM_ROM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(BIANCA_VERSION).zip

.PHONY: dudu
dudu: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_ROM_TARGET_PACKAGE)
	@echo -e "zip: "$(CUSTOM_ROM_TARGET_PACKAGE)
	@echo -e "size:`ls -lah $(CUSTOM_ROM_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e "md5sum: `md5sum $(CUSTOM_ROM_TARGET_PACKAGE) | cut -d ' ' -f 1`"

ifneq ($(PROD_CERTS),)
PROD_VERSION := $(BIANCA_VERSION)-signed

SIGNED_TARGET_FILES_PACKAGE := $(PRODUCT_OUT)/$(TARGET_DEVICE)-target_files-$(BUILD_ID_LC).zip
SIGN_FROM_TARGET_FILES := $(HOST_OUT_EXECUTABLES)/sign_target_files_apks$(HOST_EXECUTABLE_SUFFIX)

$(SIGNED_TARGET_FILES_PACKAGE): $(BUILT_TARGET_FILES_PACKAGE) \
		build/tools/releasetools/sign_target_files_apks
	@echo "Signed target files package: $@"
	    $(SIGN_FROM_TARGET_FILES) --verbose \
	    -o \
	    -p $(OUT_DIR)/host/linux-x86 \
	    -d $(PROD_CERTS) \
	    $(BUILT_TARGET_FILES_PACKAGE) $@

.PHONY: signed-target-files-package
signed-target-files-package: $(SIGNED_TARGET_FILES_PACKAGE)

PROD_OTA_PACKAGE_TARGET := $(PRODUCT_OUT)/$(PROD_VERSION).zip

$(PROD_OTA_PACKAGE_TARGET): KEY_CERT_PAIR := $(PROD_CERTS)/releasekey

ifeq ($(TARGET_EXCLUDE_BACKUPTOOL),true)
    $(PROD_OTA_PACKAGE_TARGET): backuptool := false
else
    $(PROD_OTA_PACKAGE_TARGET): backuptool := true
endif

$(PROD_OTA_PACKAGE_TARGET): $(BRO)

$(PROD_OTA_PACKAGE_TARGET): $(SIGNED_TARGET_FILES_PACKAGE) \
		build/tools/releasetools/ota_from_target_files
	@echo "bianca production: $@"
	    $(OTA_FROM_TARGET_FILES) --verbose \
	    --block \
	    -p $(OUT_DIR)/host/linux-x86 \
	    -k $(KEY_CERT_PAIR) \
	    --backup=$(backuptool) \
	    $(SIGNED_TARGET_FILES_PACKAGE) $@

.PHONY: dudu-prod
dudu-prod: $(PROD_OTA_PACKAGE_TARGET)
endif
