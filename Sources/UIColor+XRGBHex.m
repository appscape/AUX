// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import "UIColor+XRGBHex.h"

@implementation UIColor(XRGBHex)

+ (UIColor *)x_colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

+ (UIColor *)x_colorWithRGBHex:(UInt32)hex {
    return [self x_colorWithRGBHex:hex alpha:1.0f];
}

@end
