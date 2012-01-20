LOCAL_PATH := $(call my-dir)

TOOLS_CFLAGS	:= -Wstrict-prototypes -Wshadow -Wpointer-arith -Wcast-qual \
		   -Wcast-align -Wwrite-strings -Wnested-externs -Winline \
		   -W -Wundef -Wmissing-prototypes

TOOLS_C_INCLUDES := $(LOCAL_PATH)/../include

TOOLS_SRC_COMMON := i2cbusses.c

include $(CLEAR_VARS)
LOCAL_SRC_FILES := i2cdetect.c $(TOOLS_SRC_COMMON)
LOCAL_C_INCLUDES := $(TOOLS_C_INCLUDES)
LOCAL_CFLAGS := $(TOOLS_CFLAGS)
LOCAL_MODULE := i2cdetect
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(TOOLS_SRC_COMMON) i2cdump.c util.c
LOCAL_C_INCLUDES := $(TOOLS_C_INCLUDES)
LOCAL_CFLAGS := $(TOOLS_CFLAGS)
LOCAL_MODULE := i2cdump
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(TOOLS_SRC_COMMON) i2cset.c util.c
LOCAL_C_INCLUDES := $(TOOLS_C_INCLUDES)
LOCAL_CFLAGS := $(TOOLS_CFLAGS)
LOCAL_MODULE := i2cset
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(TOOLS_SRC_COMMON) i2cget.c util.c
LOCAL_C_INCLUDES := $(TOOLS_C_INCLUDES)
LOCAL_CFLAGS := $(TOOLS_CFLAGS)
LOCAL_MODULE := i2cget
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)
