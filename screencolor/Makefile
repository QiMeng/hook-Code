THEOS_DEVICE_IP = 192.168.2.5
ARCHS = armv7 arm64
TARGET = iphone:latest:7.0

include theos/makefiles/common.mk

TWEAK_NAME = screencolor
screencolor_FILES = Tweak.xm

screencolor_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
