#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/dre8

# Inherit from sm4350-common
include device/oneplus/dre8/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := renoir

# HIDL
ODM_MANIFEST_FILES := $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/dre_defconfig
TARGET_KERNEL_SOURCE := kernel/oneplus/dre8

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114001162240

# Include proprietary files
-include vendor/oneplus/dre8/BoardConfigVendor.mk
