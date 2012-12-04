$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/jiayu/G2L/G2L-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/jiayu/G2L/overlay

LOCAL_PATH := device/Jiayu/G2L

ifneq ($(TARGET_PREBUILT_KERNEL),)
	PRODUCT_COPY_FILES += \
		device/jiayu/G2L/kernel:kernel
endif

PRODUCT_COPY_FILES += \
    device/jiayu/G2L/prebuilt/root/init.G2L.rc:root/init.G2L.rc \
    device/jiayu/G2L/prebuilt/root/init.G2L.usb.rc:root/init.G2L.usb.rc \
    device/jiayu/G2L/prebuilt/root/ueventd.G2L.rc:root/ueventd.G2L.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := G2L
PRODUCT_DEVICE := G2L
PRODUCT_BRAND := jiayu
PRODUCT_MODEL := G2L
PRODUCT_MANUFACTURER := JIAYU