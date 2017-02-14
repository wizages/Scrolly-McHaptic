#include "smcprefRootListController.h"
#import <CepheiPrefs/HBSupportController.h>

@implementation smcprefRootListController

+ (NSString *)hb_specifierPlist {
    return @"Root";
}

+ (NSString *)hb_shareText {
    return @"Bring haptic feedback to your scrollviews!";
}

+(NSString *)hb_shareURL {
    return @"";
}

- (void)showSupportEmailController {
	UIViewController *viewController = (UIViewController *)[HBSupportController supportViewControllerForBundle:[NSBundle bundleForClass:self.class] preferencesIdentifier:@"com.wizage.scrollymchaptic"];
	[self.navigationController pushViewController:viewController animated:YES];
}

@end
