include theos/makefiles/common.mk

BUNDLE_NAME = iOSREHookerTweak
iOSREHookerTweak_FILES = iOSREHookerTweakController.m
iOSREHookerTweak_INSTALL_PATH = /Library/WeeLoader/Plugins
iOSREHookerTweak_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
