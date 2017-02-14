#import <Cephei/HBPreferences.h>

@interface ScrollyPrefManager : NSObject

@property (nonatomic, readonly) BOOL enabled;
@property (nonatomic, readonly) BOOL top_enabled;
@property (nonatomic, readonly) BOOL bot_enabled;
@property (nonatomic, readonly) NSInteger top_intensity;
@property (nonatomic, readonly) NSInteger bot_intensity;


+ (instancetype)sharedInstance;

-(BOOL)isApplicationEnabled:(NSString *)bundleName;
@end