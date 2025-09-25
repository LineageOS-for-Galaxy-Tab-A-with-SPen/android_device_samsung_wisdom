DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7904-common/universal7904-common.mk)

$(call inherit-product, vendor/samsung/wisdom/wisdom-vendor.mk)

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device

# Rootdir
PRODUCT_PACKAGES += \
	fstab.exynos7904 \
	init.target.rc \
	init.baseband.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
