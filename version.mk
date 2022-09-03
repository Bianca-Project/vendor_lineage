# Copyright (C) 2020 The Proton AOSP Project
# Copyright (C) 2022 Bianca Project
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

PRODUCT_BRAND := BiancaProject
OTA_VERSION := 13.0

# Official tag
#ifeq ($(BIANCA_OFFICIAL), true)
#    BIANCA_TYPE := -OFFICIAL
#else
#    BIANCA_TYPE := -UNOFFICIAL
#endif

# Custom name
ifneq ($(BIANCA_CUSTOM_NAME),)
    BIANCA_VERSION := $(PRODUCT_BRAND)-$(OTA_VERSION)-$(BIANCA_CUSTOM_NAME)-$(TARGET_PRODUCT)$(BIANCA_TYPE)-$(shell date +%Y%m%d-%H%M)
    CUSTOM_ROM_VERSION := $(OTA_VERSION)-$(BIANCA_CUSTOM_NAME)$(BIANCA_TYPE)-$(shell date +%Y%m%d-%H%M)
else
    BIANCA_VERSION := $(PRODUCT_BRAND)-$(OTA_VERSION)-$(TARGET_PRODUCT)$(BIANCA_TYPE)-$(shell date +%Y%m%d-%H%M)
    CUSTOM_ROM_VERSION := $(OTA_VERSION)$(BIANCA_TYPE)-$(shell date +%Y%m%d-%H%M)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.bianca.version=$(BIANCA_VERSION) \
  ro.bianca.ota.version=$(OTA_VERSION) \
  ro.build.version.custom=$(CUSTOM_ROM_VERSION)
