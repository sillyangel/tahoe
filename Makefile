TARGET = iphone:clang:latest:15.0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tahoe

tahoe_FILES = $(shell find Sources/tahoe -name '*.swift') $(shell find Sources/tahoeC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
tahoe_SWIFTFLAGS = -ISources/tahoeC/include
tahoe_CFLAGS = -fobjc-arc -ISources/tahoeC/include

include $(THEOS_MAKE_PATH)/tweak.mk
