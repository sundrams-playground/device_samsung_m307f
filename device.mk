#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common tree
$(call inherit-product, device/samsung/m30s-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/m307f/m307f-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/init.vendor.rilchip.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.vendor.rilchip.rc \
    $(LOCAL_PATH)/configs/init/init.vendor.rilcommon.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.vendor.rilcommon.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml
