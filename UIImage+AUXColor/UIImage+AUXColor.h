// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import <UIKit/UIKit.h>

@interface UIImage(AUXColor)

// Returns a 1x1 UIImage with one pixel set to the supplied color
+ (UIImage *)auxImageWithColor:(UIColor*)color;

@end