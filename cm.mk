## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := G2L

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Jiayu/G2L/device_G2L.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G2L
PRODUCT_NAME := G2L
PRODUCT_BRAND := Jiayu
PRODUCT_MODEL := G2L
PRODUCT_MANUFACTURER := Jiayu
