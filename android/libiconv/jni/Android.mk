LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../libiconv-1.14/include \
$(LOCAL_PATH)/../../../libiconv-1.14/libcharset \
$(LOCAL_PATH)/../../../libiconv-1.14/libcharset/include

LOCAL_SRC_FILES := ../../../libiconv-1.14/lib/iconv.c \
../../../libiconv-1.14/libcharset/lib/localcharset.c \
../../../libiconv-1.14/lib/relocatable.c

LOCAL_CFLAGS := -DLIBDIR=\"\" -DANDROID
LOCAL_MODULE := libiconv

include $(BUILD_SHARED_LIBRARY)
