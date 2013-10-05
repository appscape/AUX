// From AUX, the Cocoa categories collection (http://github.com/appscape/AUX)

#import "UIColor+AUXRGBHex.h"

@implementation UIColor(RGBHex)

+ (UIColor *)auxColorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

+ (UIColor *)auxColorWithRGBHex:(UInt32)hex {
    return [self auxColorWithRGBHex:hex alpha:1.0f];
}

@end
