#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nabu device
$(call inherit-product, device/xiaomi/nabu/device.mk)

PRODUCT_DEVICE := nabu
PRODUCT_NAME := omni_nabu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Pad 5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_nabu-eng 16.1.0 SD2A.220601.004.B2 eng.sk.20240915.145002 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_nabu/nabu:16.1.0/SD2A.220601.004.B2/sk09151445:eng/test-keys
