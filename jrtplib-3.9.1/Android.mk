LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += external/stlport/stlport bionic

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/*.c*)) \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/extratransmitters/*.c*))
                  
LOCAL_MODULE:= libjrtplib

LOCAL_SHARED_LIBRARIES := libjthread libstlport

LOCAL_PRELINK_MODULE:= false
 
include $(BUILD_SHARED_LIBRARY)
