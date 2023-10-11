export THEOS=/var/theos
ARCHS = arm64 #arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
IGNORE_WARNINGS=0
MOBILE_THEOS=1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AlertTheos


PROJ_COMMON_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText


$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG


$(TWEAK_NAME)_FILES = main.mm $(wildcard SCLAlertView/*.m) 

$(TWEAK_NAME)_LIBRARIES += substrate

$(TWEAK_NAME)_FRAMEWORKS = $(PROJ_COMMON_FRAMEWORKS)


include $(THEOS_MAKE_PATH)/tweak.mk


	


