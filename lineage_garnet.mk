#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Reduce overdraw debugging to improve performance
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.show_overdraw=false

# Enable Vulkan for games and OpenGL Skia for the UI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.force_vulkan=1 \
    debug.hwui.renderer=skiagl

# Ensures smoother rendering by turning off unnecessary GPU debugging
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.show_overdraw=false

# Reduces input lag and smoothens animations
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_triple_buffering=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Disable scrolling cache for smoother scrolling
persist.sys.scrollingcache=3

# Keep the launcher in memory to reduce reload times
ro.HOME_APP_ADJ=1

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Device config
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MATLOG := true

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.9.0.VNRMIXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.9.0.VNRMIXM:user/release-keys \
    DeviceName=garnet \
    DeviceProduct=garnet_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
