#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xiaomi-SDM660 Project
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

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit dotOS product configuration
$(call inherit-product, vendor/dot/config/common.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210505.003 7255357 release-keys" \
    BUILD_FINGERPRINT="google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := dot_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# Inherit dotOS Official build stuff.
DOT_OFFICIAL := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
WITH_GAPPS := true
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_STOCK_ARCORE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# TWRP Support
BUILD_TWRP := true
