#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/denniz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS Flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
PRODUCT_NO_CAMERA := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit RisingOS configurations.
RISING_MAINTAINER := Liwhy

# Add Official Stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="MediaTek Dimensity 1200" \
    RISING_MAINTAINER="Liwhy"

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_denniz
PRODUCT_DEVICE := denniz
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Nord 2 5G
PRODUCT_MANUFACTURER := OnePlus

# Build info
BUILD_FINGERPRINT := "OnePlus/DN2103EEA/OP515BL1:13/TP1A.220905.001/R.108b2c1-1:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES := BuildDesc="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1684289553451 release-keys"
PRODUCT_PROPERTY_OVERRIDES := ro.build.fingerprint=$(BUILD_FINGERPRINT)
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
