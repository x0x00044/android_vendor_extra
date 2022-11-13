#
# Copyright (C) 2023 x0x00044
#
# SPDX-License-Identifier: Apache-2.0
#

EXTRA_PATH := vendor/extra

# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(EXTRA_PATH)/overlay
PRODUCT_PACKAGE_OVERLAYS += $(EXTRA_PATH)/overlay

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# ih8sn
ifeq ($(WITH_IH8SN), true)
$(call inherit-product-if-exists, $(EXTRA_PATH)/ih8sn/ih8sn.mk)
endif
endif
