#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/mayfly

# Inherit from sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Include proprietary files
include vendor/xiaomi/mayfly/BoardConfigVendor.mk
