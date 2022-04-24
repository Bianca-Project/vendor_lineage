CUSTOM_ROM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(BIANCA_VERSION).zip

.PHONY: dudu
dudu: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_ROM_TARGET_PACKAGE)
	@echo -e "zip: "$(CUSTOM_ROM_TARGET_PACKAGE)
	@echo -e "size:`ls -lah $(CUSTOM_ROM_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e "md5sum: `md5sum $(CUSTOM_ROM_TARGET_PACKAGE) | cut -d ' ' -f 1`"
