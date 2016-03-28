LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	dexec.c     dfork.c    dlog.c  \
	dnonblock.c dpid.c     dsignal.c

LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_CFLAGS += -DLOCALSTATEDIR=\"/system/etc\"
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/

LOCAL_MODULE:= libdaemon
#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
