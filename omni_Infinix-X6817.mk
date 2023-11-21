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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6817 device
$(call inherit-product, device/infinix/Infinix-X6817/device.mk)

PRODUCT_DEVICE := Infinix-X6817
PRODUCT_NAME := omni_Infinix-X6817
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6817
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6817_h6920-user 12 SP1A.210812.016 106740 release-keys"

BUILD_FINGERPRINT := Infinix/X6817-OP/Infinix-X6817:12/SP1A.210812.016/220926V1196:user/release-keys

# Dynamic partition
PRODUCT_USE_DYNAMIC_PARTITION := true

# Fastbootd
PRODUCT_PACKAGE +\
    android.hardware.fastboot@1.0-impl-mock