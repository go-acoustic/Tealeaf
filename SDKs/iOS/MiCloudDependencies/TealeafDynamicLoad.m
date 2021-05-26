#import "TealeafDynamicLoad.h"
#import "TLFApplicationHelper.h"
@implementation TealeafDynamicLoad
+ (void)load {

    char* autoEnableTealeaf = getenv("TLF_AUTO_ENABLE");
    if( autoEnableTealeaf )
    {
        NSString* autoEnableTealeafStr = [NSString stringWithUTF8String:autoEnableTealeaf];
        if( autoEnableTealeafStr && ([autoEnableTealeafStr containsString:@"1"] == YES) )
        {
            NSLog(@"Auto loading Tealeaf SDK");
            [[TLFApplicationHelper sharedInstance] enableTealeafFramework];
            DLog(@"Tealeaf SDK Loaded");
        }
    }
}
@end

