TARGET := iphone:clang:latest:8.0
INSTALL_TARGET_PROCESSES = com.soundcloud.TouchApp

THEOS_PACKAGE_SCHEME = rootless
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SCMusicPlus

SCMusicPlus_FILES = Tweak.x
SCMusicPlus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
