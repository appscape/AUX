// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import "UIImage+AUXColor.h"

@implementation UIImage(AUXColor)

+ (UIImage *)auxImageWithColor:(UIColor*)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);

    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
