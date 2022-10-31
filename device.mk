#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cape/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_cape/resourcemanager_waipio_mtp.xml

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMayfly \
    FrameworksResMayfly \
    SettingsProviderResMayfly \
    SettingsResMayfly \
    SystemUIResMayfly \
    WifiResMayfly

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mayfly/mayfly-vendor.mk)
