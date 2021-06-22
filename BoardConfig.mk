#
# Copyright (C) 2017-2019 The LineageOS Project
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

BOARD_VENDOR := samsung

DEVICE_PATH := $(DEVICE_PATH)

ALLOW_MISSING_DEPENDENCIES = true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := dreamqlte
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00008000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.init_fatal_reboot_target=recovery androidboot.selinux=permissive

# Platform
TARGET_BOARD_PLATFORM := msm8998

# Assert
TARGET_OTA_ASSERT_DEVICE := dreamqlte, dreamqltechn

# A/B OTA
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4478795776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58543898624
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := system/vendor
TARGET_NO_RECOVERY := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# Security patch level
VENDOR_SECURITY_PATCH := 2099-07-05

# TWRP
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 155
TW_EXTRA_LANGUAGES := ture
TW_IGNORE_MISC_WIPE_DATA := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := false
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
#TW_INCLUDE_CRYPTO_FBE := true
#TW_INCLUDE_FBE_METADATA_DECRYPT := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_PROVIDES_GPTUTILS := true
USE_RECOVERY_INSTALLER := true
RECOVERY_INSTALLER_PATH := $(DEVICE_PATH)/installer
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_HAS_DOWNLOAD_MODE := true

# For TWRP DEBUG
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
