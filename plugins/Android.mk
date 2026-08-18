MY_LOCAL_PATH := $(call my-dir)
ifneq ($(TARGET_PRODUCT),cupid)
include $(MY_LOCAL_PATH)/tinyalsa/Android.mk
include $(MY_LOCAL_PATH)/tinyalsa/test/Android.mk
endif
