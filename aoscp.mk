# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from h815 device
$(call inherit-product, device/lge/h815/device.mk)

# Inherit AOSCP common bits
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h815
PRODUCT_NAME := aoscp_h815
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H815
PRODUCT_MANUFACTURER := LGE

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := "LG G4 H815"
TARGET_VENDOR_DEVICE_NAME := "LG G4 H815"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="p1_global_com" \
    PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"

BUILD_FINGERPRINT := "lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys"
