TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = com.soundcloud.TouchApp


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SCMusicPlus

SCMusicPlus_FILES = Tweak.x
SCMusicPlus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
