TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = com.soundcloud.TouchApp

ifeq ($(ROOTLESS),1)
THEOS_PACKAGE_SCHEME=rootless
endif

ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SCMusicPlus

SCMusicPlus_FILES = Tweak.x
SCMusicPlus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
