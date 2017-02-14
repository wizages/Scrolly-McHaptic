#include "smcprefRootListController.h"
#import <CepheiPrefs/HBSupportController.h>
//#import <CepheiPrefs/HBRespringController.h>


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

-(void)respring{
	//[HBRespringController respring];
	#pragma clang diagnostic push
	#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	    system("killall -9 SpringBoard");
	#pragma clang diagnostic pop
}

@end
