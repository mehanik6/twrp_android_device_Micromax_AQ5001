LOCAL_PATH := device/Micromax/AQ5001

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/init.recovery.mt6582.rc:root/init.recovery.mt6582.rc \
    $(LOCAL_PATH)/init.recovery.usb.rc:root/init.recovery.usb.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := AQ5001


