LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
 
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/pthread/*.c*))
 
LOCAL_MODULE:= libjthread
 
LOCAL_PRELINK_MODULE:= false
 
include $(BUILD_SHARED_LIBRARY)
