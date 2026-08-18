
LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_PRODUCT),cupid)
ifneq ($(TARGET_USES_PREBUILT_AUDIOREACH_GRAPH_SERVICES),true)
include $(CLEAR_VARS)

LOCAL_MODULE        := libagmipcservice
LOCAL_MULTILIB      := 64
LOCAL_MODULE_OWNER  := qti
LOCAL_VENDOR_MODULE := true

LOCAL_C_INCLUDES    := $(LOCAL_PATH)/inc
LOCAL_C_INCLUDES    += $(TOP)/vendor/qcom/opensource/agm/service/inc/public

LOCAL_CLANG             := true
LOCAL_TIDY              := true
LOCAL_CFLAGS            += -v -Wall -Wthread-safety

LOCAL_SRC_FILES     :=  \
    Service.cpp \
    AgmServerWrapper.cpp

LOCAL_STATIC_LIBRARIES := libagmaidltypeconverter libaidlcommonsupport


LOCAL_SHARED_LIBRARIES := \
    liblog \
    libbinder_ndk \
    libbase \
    libcutils \
    libutils \
    libar-gsl \
    libagm \
    vendor.qti.hardware.agm-V1-ndk

include $(BUILD_SHARED_LIBRARY)

endif
endif
