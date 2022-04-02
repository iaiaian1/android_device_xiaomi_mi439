#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm439-common
$(call inherit-product, device/xiaomi/sdm439-common/sdm439.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay \
    xiaomi_olive_overlay \
    xiaomi_olive_overlay_Snap \
    xiaomi_olive_overlay_SystemUI

# POSP
PRODUCT_BOARD_PLATFORM := msm8937
PRODUCT_USES_QCOM_HARDWARE := true
# XPE
TARGET_BOARD_PLATFORM := msm8937

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/blank.xml \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Network
PRODUCT_PACKAGES += \
    android.system.net.netd@1.1.vendor

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0.vendor \
    android.hardware.gnss@1.1.vendor \
    android.hardware.gnss@2.0.vendor

# device/qcom/common modules
TARGET_COMMON_QTI_COMPONENTS := \
    bt \
    perf \
    display

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libdisplayconfig.qti \
    libdisplayconfig.qti.so \
    libdisplayconfig.qti.so.toc \
    libdisplayconfig.vendor \
    libdisplayconfig.qti.vendor \
    libqdMetaData.system \
    libqdMetaData \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    vendor.qti.hardware.display.config-V1-ndk_platform \
    vendor.qti.hardware.display.config-V2-ndk_platform \
    vendor.qti.hardware.display.config-V3-ndk_platform \
    vendor.qti.hardware.display.config-V4-ndk_platform \
    vendor.qti.hardware.display.config-V5-ndk_platform \
    vendor.qti.hardware.display.config-V6-ndk_platform \
    vendor.qti.hardware.display.config-V1-ndk_platform.vendor \
    vendor.qti.hardware.display.config-V2-ndk_platform.vendor \
    vendor.qti.hardware.display.config-V3-ndk_platform.vendor \
    vendor.qti.hardware.display.config-V4-ndk_platform.vendor \
    vendor.qti.hardware.display.config-V5-ndk_platform.vendor \
    vendor.qti.hardware.display.config-V6-ndk_platform.vendor

# libvr_sam_wrapper
PRODUCT_PACKAGES += \
    libvr_sam_wrapper.vendor

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/pine_mixer_paths_sdm439_pm8953.xml:$(TARGET_COPY_OUT_VENDOR)/etc/pine_mixer_paths_sdm439_pm8953.xml \
    $(LOCAL_PATH)/audio/olive_mixer_paths_sdm439_pm8953.xml:$(TARGET_COPY_OUT_VENDOR)/etc/olive_mixer_paths_sdm439_pm8953.xml

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_mi439 \
    android.hardware.biometrics.fingerprint@2.2

# Rootdir
PRODUCT_PACKAGES += \
    init.xiaomi.device.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/pine___def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/pine___def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/olive__def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/olive__def_qcomdev.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/qcom/opensource/commonsys/display

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/mi439/mi439-vendor.mk)
