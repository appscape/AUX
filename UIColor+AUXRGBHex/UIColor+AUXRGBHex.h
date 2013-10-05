// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import <UIKit/UIKit.h>

@interface UIColor(AUXRGBHex)

+(UIColor *)auxColorWithRGBHex:(UInt32)hex;
+(UIColor *)auxColorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;

@end
