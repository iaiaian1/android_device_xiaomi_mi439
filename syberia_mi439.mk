#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/syberia/config/common_full_phone.mk)

# Inherit some pixel stuffs from syberia vendor
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit from mi439 device
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true

# Syberia flag
SYBERIA_BUILD_TYPE := OFFICIAL

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi439
PRODUCT_NAME := syberia_mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
DEVICE_MAINTAINER := iaiaian1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220505.002 8353555 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys"
