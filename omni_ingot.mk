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

# Inherit from ingot device
$(call inherit-product, device/solana/ingot/device.mk)

PRODUCT_DEVICE := ingot
PRODUCT_NAME := omni_ingot
PRODUCT_BRAND := OSOM
PRODUCT_MODEL := Saga
PRODUCT_MANUFACTURER := solana

PRODUCT_GMS_CLIENTID_BASE := android-osom

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ingot-user 14 UKQ1.231121.127 127 release-keys"

BUILD_FINGERPRINT := OSOM/ingot/ingot:14/UKQ1.231121.127/127:user/release-keys
