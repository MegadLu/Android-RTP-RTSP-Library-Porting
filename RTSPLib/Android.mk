LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := arm
LOCAL_MODULE := libgnustl_static
LOCAL_SRC_FILES := lib/libgnustl_static.a
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .a
include $(BUILD_PREBUILT)
#######################################################################

#LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := librtsp

LOCAL_ARM_MODE := arm

LOCAL_PRELINK_MODULE := false

LOCAL_CPPFLAGS := \
	-DNULL=0 -DSOCKLEN_T=socklen_t -DNO_SSTREAM -DBSD=1 -DNO_SSTREAM -fexceptions -DANDROID -DXLOCALE_NOT_USED

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/BasicUsageEnvironment/include \
	$(LOCAL_PATH)/BasicUsageEnvironment \
	$(LOCAL_PATH)/UsageEnvironment/include \
	$(LOCAL_PATH)/UsageEnvironment \
	$(LOCAL_PATH)/groupsock/include \
	$(LOCAL_PATH)/groupsock \
	$(LOCAL_PATH)/liveMedia/include \
	$(LOCAL_PATH)/liveMedia \

LOCAL_STATIC_LIBRARIES := libgnustl_static

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/BasicUsageEnvironment/*.c*)) \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/UsageEnvironment/*.c*)) \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/groupsock/*.c*)) \
	$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/liveMedia/*.c*))

include $(BUILD_STATIC_LIBRARY)
