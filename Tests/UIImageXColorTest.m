#import <XCTest/XCTest.h>
#import "UIImage+XColor.h"

@interface UIImageXColorTest : XCTestCase

@end

@implementation UIImageXColorTest

- (void)test {
    UIImage *image = [UIImage x_imageWithColor:[UIColor brownColor]]; // 0.6, 0.4, 0.2 RGB
    XCTAssertEqualWithAccuracy(image.size.width, 1, FLT_EPSILON,  @"Invalid image width");
    XCTAssertEqualWithAccuracy(image.size.height, 1, FLT_EPSILON, @"Invalid image height");

    CGImageRef imageRef = image.CGImage;

    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    unsigned char *pixel = malloc(4);
    CGContextRef context = CGBitmapContextCreate(pixel, 1, 1, 8, 4, colorSpace, kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);
    CGColorSpaceRelease(colorSpace);
    CGContextDrawImage(context, CGRectMake(0, 0, 1, 1), imageRef);
    CGContextRelease(context);

    const UInt8* data = pixel;
    XCTAssertEqual(data[0], (UInt8)(0.6 * 0xff), @"R component wrong");
    XCTAssertEqual(data[1], (UInt8)(0.4 * 0xff), @"G component wrong");
    XCTAssertEqual(data[2], (UInt8)(0.2 * 0xff), @"B component wrong");
    XCTAssertEqual(data[3], (UInt8)(1.0 * 0xff), @"Alpha component wrong");

    free(pixel);
}

@end
