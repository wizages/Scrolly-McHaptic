SDKVERSION = 10.1
SYSROOT = $(THEOS)/sdks/iPhoneOS10.1.sdk
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = scrollyprefs
scrollyprefs_FILES = smcprefRootListController.m
scrollyprefs_INSTALL_PATH = /Library/PreferenceBundles
scrollyprefs_FRAMEWORKS = UIKit
scrollyprefs_PRIVATE_FRAMEWORKS = Preferences
scrollyprefs_EXTRA_FRAMEWORKS = CepheiPrefs Cephei
scrollyprefs_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/scrollyprefs.plist$(ECHO_END)
