#import <XCTest/XCTest.h>
#import "UIImage+AUXColor.h"

@interface UIImageAuxColorTest : XCTestCase

@end

@implementation UIImageAuxColorTest

- (void)test {
    UIImage *image = [UIImage auxImageWithColor:[UIColor brownColor]]; // 0.6, 0.4, 0.2 RGB
    XCTAssertEqualWithAccuracy(image.size.width, 1, FLT_EPSILON,  @"Invalid image width");
    XCTAssertEqualWithAccuracy(image.size.height, 1, FLT_EPSILON, @"Invalid image height");

    const UInt8* data = CFDataGetBytePtr(CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage)));
    XCTAssertEqual(data[3], (UInt8)(0.6 * 0xff), @"R component wrong");
    XCTAssertEqual(data[2], (UInt8)(0.4 * 0xff), @"G component wrong");
    XCTAssertEqual(data[1], (UInt8)(0.2 * 0xff), @"B component wrong");
    XCTAssertEqual(data[0], (UInt8)(1.0 * 0xff), @"Alpha component wrong");
}

@end
