# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := hi6250

# Release name
PRODUCT_RELEASE_NAME := warsaw

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := warsaw
PRODUCT_NAME := twrp_warsaw
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := P10 lite
PRODUCT_MANUFACTURER := Huawei

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/huawei/warsaw/device.mk)