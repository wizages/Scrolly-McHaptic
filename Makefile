include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ScrollyMcHaptic
ScrollyMcHaptic_FILES = Tweak.xm
ScrollyMcHaptic_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
