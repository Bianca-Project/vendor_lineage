# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# BIANCA OTA update package

BIANCA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(BIANCA_VERSION).zip

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: dudu
dudu: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(BIANCA_TARGET_PACKAGE)
	$(hide) $(MD5) $(BIANCA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(BIANCA_TARGET_PACKAGE).md5sum
	@echo "Package Complete: $(BIANCA_TARGET_PACKAGE)" >&2
