DEVICE_PATH := device/samsung/wisdom

# Kernel
TARGET_KERNEL_CONFIG := wisdom_defconfig
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3565158400
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/efs:/efs \
    /mnt/vendor/efs:/factory

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7904

# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := mobicore

# SPL
VENDOR_SECURITY_PATCH := 2023-02-01

# Inherit common board flags
include device/samsung/universal7904-common/BoardConfigCommon.mk

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/android.hardware.keymaster@3.0-service.xml
