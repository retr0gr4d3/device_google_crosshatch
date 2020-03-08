# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRIVATE_BUILD_DESC="crosshatch-user 10 QQ2A.200305.002 6138846 release-keys"

BUILD_FINGERPRINT := "google/crosshatch/crosshatch:10/QQ2A.200305.002/6138846:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/crosshatch/crosshatch:10/QQ2A.200305.002/6138846:user/release-keys

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)
