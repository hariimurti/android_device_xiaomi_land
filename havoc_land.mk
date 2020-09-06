#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit from land device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common HavocOS stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

HAVOC_BUILD_TYPE := Custom

# Inherit some bloatware stuff
$(call inherit-product-if-exists, vendor/bloatware/packages.mk)

# Define Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_GAPPS_LITE := true
TARGET_GCAMMOD_AS_DEFAULT_CAM := false

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := havoc_land
PRODUCT_MODEL := Redmi 3S

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR_PRODUCT_NAME := land

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys

