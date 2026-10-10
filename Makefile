ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

# Rootless jailbreaks (Dopamine, palera1n rootless...): uncomment the next line
# THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GTASAMenu

GTASAMenu_FILES = Tweak.m
GTASAMenu_FRAMEWORKS = UIKit Foundation
GTASAMenu_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
