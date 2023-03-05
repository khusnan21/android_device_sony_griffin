#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from bahamut device
$(call inherit-product, device/sony/griffin/device.mk)

PRODUCT_DEVICE := griffin
PRODUCT_NAME := omni_griffin
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Griffin
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="griffin-user 10 QKQ1.190915.002 1 dev-keys"

BUILD_FINGERPRINT := Sony/griffin/griffin:10/QKQ1.190915.002/1:user/dev-keys
