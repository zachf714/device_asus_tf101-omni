#
# Copyright (C) 2012 The CyanogenMod Project
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

# assert
TARGET_OTA_ASSERT_DEVICE := tf101

# include
-include vendor/asus/tf101/BoardConfigVendor.mk

# partitions
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9999999
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 527433728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707

# platform
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := ventana
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_MALLOC_ALIGNMENT := 16
TARGET_EXTRA_CFLAGS := $(call cc-option,-mtune=cortex-a9) $(call cc-option,-mcpu=cortex-a9)

#define to use all of the Linaro Cortex-A9 optimized string funcs,
#instead of subset known to work on all machines
USE_ALL_OPTIMIZED_STRING_FUNCS := true

# wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

# audio
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_GENERIC_AUDIO := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := true

# battery
TARGET_HAS_DOCK_BATTERY := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/asus/tf101/bluetooth

# kernel - disable inline building for now  
TARGET_KERNEL_SOURCE := kernel/asus/tf101
TARGET_KERNEL_CONFIG := katkernel_lidpatch_defconfig

# camera
USE_CAMERA_STUB := false

# Needed for Some Vendors Proprietary blobs
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOL

# Old EGL
BOARD_EGL_NEEDS_LEGACY_FB := true

# display
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# SELinux policies
#BOARD_SEPOLICY_DIRS := \
#    device/asus/tf101/selinux

#BOARD_SEPOLICY_UNION := \
#    file_contexts \
#    file.te \
#    device.te \
#    domain.te

# release
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf101/releasetools/tf101_ota_from_target_files

# Tegra2 EGL support
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_EGL_CFG := device/asus/tf101/prebuilt/lib/hw/egl.cfg
USE_OPENGL_RENDERER := true

# recovery hack
TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p3; sync"

# recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB = device/asus/tf101/ventana.fstab
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4

#TWRP
DEVICE_RESOLUTION := 1280x800
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p8"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "journal_async_commit,data=writeback,nodelalloc"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
#TWRP_CUSTOM_KEYBOARD := ../../../device/asus/tf300t/recovery/hardwarekeyboard.cpp