#
# Copyright (C) 2015 The Android Open-Source Project
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
LOCAL_PATH := device/motorola/surnia

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
#$(call inherit-product, device/motorola/surnia/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := surnia
PRODUCT_NAME := full_surnia
PRODUCT_BRAND := motorola
PRODUCT_MODEL := surnia
PRODUCT_MANUFACTURER := motorola

$(call inherit-product-if-exists, vendor/motorola/surnia/surnia-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel:kernel \

# DT Image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \

# Kernel Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:root/etc/twrp.fstab \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:root/etc/fstab.qcom \
    $(LOCAL_PATH)/rootdir/sbin/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/rootdir/sbin/sqlite3:root/sbin/sqlite3
