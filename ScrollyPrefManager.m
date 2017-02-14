#import "ScrollyPrefManager.h"
#import <Cephei/HBPreferences.h>

static NSString *const kSMEnabledKey = @"enabled";
static NSString *const kSMTopEnabledKey = @"top_enabled";
static NSString *const kSMBotEnabledKey = @"bot_enabled";
static NSString *const kSMTopIntKey = @"top_intensity";
static NSString *const kSMBotIntKey = @"bot_intensity";


@implementation ScrollyPrefManager {
	HBPreferences *_preferences;
}

+ (instancetype)sharedInstance {
	static ScrollyPrefManager *sharedInstance;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedInstance = [[self alloc] init];
	});

	return sharedInstance;
}

- (instancetype)init {
	if (self = [super init]) {
		_preferences = [[HBPreferences alloc] initWithIdentifier:@"com.wizages.scrollyprefs"];

		[_preferences registerBool:&_enabled default:true forKey:kSMEnabledKey];
        [_preferences registerBool:&_top_enabled default:true forKey:kSMTopEnabledKey];
        [_preferences registerInteger:&_top_intensity default:10 forKey:kSMTopIntKey];
        [_preferences registerBool:&_bot_enabled default:true forKey:kSMBotEnabledKey];
        [_preferences registerInteger:&_bot_intensity default:10 forKey:kSMBotIntKey];
	}

	return self;
}

#pragma mark - Memory management

- (void)dealloc {
	[_preferences release];

	[super dealloc];
}

@end