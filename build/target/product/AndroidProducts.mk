#
# Copyright (C) 2018-2020 The LineageOS Project
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
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/bianca_arm.mk \
    $(LOCAL_DIR)/bianca_arm64.mk \
    $(LOCAL_DIR)/bianca_x86.mk \
    $(LOCAL_DIR)/bianca_x86_64.mk \
    $(LOCAL_DIR)/bianca_arm_ab.mk \
    $(LOCAL_DIR)/bianca_arm64_ab.mk \
    $(LOCAL_DIR)/bianca_x86_ab.mk \
    $(LOCAL_DIR)/bianca_x86_64_ab.mk \
    $(LOCAL_DIR)/bianca_tv_arm.mk \
    $(LOCAL_DIR)/bianca_tv_arm64.mk \
    $(LOCAL_DIR)/bianca_tv_x86.mk \
    $(LOCAL_DIR)/bianca_tv_x86_64.mk \
    $(LOCAL_DIR)/bianca_car_arm64.mk \
    $(LOCAL_DIR)/bianca_car_x86_64.mk

COMMON_LUNCH_CHOICES := \
    bianca_arm-userdebug \
    bianca_arm64-userdebug \
    bianca_x86-userdebug \
    bianca_x86_64-userdebug \
    bianca_arm_ab-userdebug \
    bianca_arm64_ab-userdebug \
    bianca_x86_ab-userdebug \
    bianca_x86_64_ab-userdebug \
    bianca_tv_arm-userdebug \
    bianca_tv_arm64-userdebug \
    bianca_tv_x86-userdebug \
    bianca_tv_x86_64-userdebug \
    bianca_car_arm64-userdebug \
    bianca_car_x86_64-userdebug
