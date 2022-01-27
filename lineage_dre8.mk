#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dre8 device
$(call inherit-product, device/xiaomi/renoir/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := dre8
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := Nord N200 5g
PRODUCT_NAME := lineage_dre8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
