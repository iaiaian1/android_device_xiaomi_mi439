#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Arcana stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from mi439 device
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true

#ARCANA STUFFS
ARCANA_OFFICIAL := true
ARCANA_DEVICE := mi439
ARCANA_MAINTAINER := iaiaian1
WITH_GAPPS := false
TARGET_SUPPORTS_BLUR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
COPY_APN_SYSTEM := true


PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mi439
PRODUCT_NAME := aosp_mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
DEVICE_MAINTAINER := iaiaian1

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys
BUILD_DESCRIPTION := raven-user 12 SQ1D.211205.016.A1 7957957 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"