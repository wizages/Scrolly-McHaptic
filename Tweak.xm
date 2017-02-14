#import <AudioToolbox/AudioServices.h>
extern "C" void AudioServicesPlaySystemSoundWithVibration(SystemSoundID inSystemSoundID, id unknown, NSDictionary *options);
static void hapticFeedback(){
        NSMutableDictionary* VibrationDictionary = [NSMutableDictionary dictionary];
        NSMutableArray* VibrationArray = [NSMutableArray array ];
        [VibrationArray addObject:[NSNumber numberWithBool:YES]];
        [VibrationArray addObject:[NSNumber numberWithInt:100]];
        [VibrationDictionary setObject:VibrationArray forKey:@"VibePattern"];
        [VibrationDictionary setObject:[NSNumber numberWithInt:10] forKey:@"Intensity"];
        AudioServicesPlaySystemSoundWithVibration(4095,nil,VibrationDictionary);
}

@interface UIScrollView (extension)

-(BOOL)_isScrollingToTop;

@end

%hook UIScrollView

-(BOOL)_scrollViewWillEndDraggingWithDeceleration:(BOOL)arg1{

	BOOL returnValue = %orig;

	CGPoint offset = self.contentOffset;
    CGRect bounds = self.bounds;
    CGSize size = self.contentSize;
    UIEdgeInsets inset = self.contentInset;
    float y = offset.y + bounds.size.height - inset.bottom;
    float h = size.height;
    float reload_distance = 10;
    if(y > h + reload_distance && offset.y > 0) {
        hapticFeedback();
    } else if ( offset.y < 0 && offset.y < (-1*inset.top))
    {
    	hapticFeedback();
    }

    return returnValue;
}

%end