
ARCHS = armv7 arm64
TARGET = iphone:latest:7.0


include theos/makefiles/common.mk

TWEAK_NAME = iOSREGreetings
iOSREGreetings_FILES = Tweak.xm

iOSREGreetings_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += iosscreen
include $(THEOS_MAKE_PATH)/aggregate.mk
