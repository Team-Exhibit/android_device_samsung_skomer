#
# Copyright (C) 2013 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/skomer/skomer-vendor.mk)

# codinalte
$(call inherit-product, device/samsung/codinalte/codinalte-common.mk)

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sirfgps.conf:system/etc/sirfgps.conf

# Inputs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.samsungskomer.rc:root/init.samsungskomer.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungskomer.rc:root/ueventd.samsungskomer.rc \
    $(LOCAL_PATH)/rootdir/fstab.samsungskomer:root/fstab.samsungskomer \
    $(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/rootdir/init.samsungskomer.usb.rc:root/init.samsungskomer.usb.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc

# Recovery ramdisk, libraries and modules.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/rootdir/init.recovery.samsungskomer.rc:root/init.recovery.samsungskomer.rc
