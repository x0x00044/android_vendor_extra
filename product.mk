#
# Copyright (C) 2023 x0x00044
#
# SPDX-License-Identifier: Apache-2.0
#

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
endif
