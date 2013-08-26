LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ../lib/iconv.c \
../libcharset/lib/localcharset.c \
../lib/relocatable.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include \
$(LOCAL_PATH)/../libcharset \
$(LOCAL_PATH)/../libcharset/include

LOCAL_CFLAGS := -DLIBDIR=\"\" -DANDROID
LOCAL_MODULE := libiconv

include $(BUILD_SHARED_LIBRARY)

