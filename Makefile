INSTALL_TARGET_PROCESSES = com.soundcloud.TouchApp

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64 arm64e
	TARGET = iphone:clang:15.5:15.0
else
	ARCHS = armv7 armv7s arm64 arm64e
	TARGET = iphone:clang:14.2:7.0
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SCMusicPlus

SCMusicPlus_FILES = Tweak.x
SCMusicPlus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
