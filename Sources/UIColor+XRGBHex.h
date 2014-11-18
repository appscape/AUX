// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import <UIKit/UIKit.h>

@interface UIColor(XRGBHex)

+(UIColor *)x_colorWithRGBHex:(UInt32)hex;
+(UIColor *)x_colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;

@end
