#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from m307f device
$(call inherit-product, device/samsung/m307f/device.mk)

## Inherit some common dotOS stuff
$(call inherit-product, vendor/dot/config/common.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier, this must come after all inclusions
PRODUCT_NAME := dot_m307f
PRODUCT_DEVICE := m307f
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M307F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28

PRODUCT_GMS_CLIENTID_BASE := android-samsung
