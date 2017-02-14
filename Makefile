SDKVERSION = 10.1
SYSROOT = $(THEOS)/sdks/iPhoneOS10.1.sdk
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ScrollyMcHaptic
ScrollyMcHaptic_FILES = Tweak.xm ScrollyPrefManager.m
ScrollyMcHaptic_FRAMEWORKS = AudioToolbox
ScrollyMcHaptic_EXTRA_FRAMEWORKS = Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += scrollyprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
