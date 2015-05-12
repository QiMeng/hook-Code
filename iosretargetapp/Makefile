THEOS_DEVICE_IP = 192.168.2.5
ARCHS = armv7 arm64
TARGET = iphone:latest:7.1

include theos/makefiles/common.mk

APPLICATION_NAME = iosretargetapp
iosretargetapp_FILES = main.m iosretargetappApplication.mm RootViewController.mm
iosretargetapp_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "su mobile -c uicache"
