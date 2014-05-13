-include device/motorola/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/xt926/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/xt926

# Use common resources
TARGET_USES_MOTOROLA_MSM8960_COMMON_LIBLIGHT := true

# NFC
BOARD_HAVE_NFC := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/motorola/msm8960-common
TARGET_KERNEL_CONFIG := msm8960_mmi_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := sm-arm-eabi-4.10
TARGET_KERNEL_SELINUX_CONFIG := msm8960_mmi_selinux_defconfig
BOARD_KERNEL_CMDLINE := console=/dev/null androidboot.hardware=qcom user_debug=31 loglevel=1 zcache 
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000
TARGET_USE_O3 := true

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#TWRP
DEVICE_RESOLUTION := 720x1280

# userdata size is set for maxx but we don't flash anyway
BOARD_USERDATAIMAGE_PARTITION_SIZE :=  17179869184
