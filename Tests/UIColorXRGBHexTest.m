#import <XCTest/XCTest.h>
#import "UIColor+XRGBHex.h"

@interface UIColorXHexTest : XCTestCase

@end

@implementation UIColorXHexTest

- (void)testExample {
    XCTAssertTrue([[UIColor x_colorWithRGBHex:0xff0000] isEqual:[UIColor redColor]]);
    XCTAssertTrue([[UIColor x_colorWithRGBHex:0x00ff00] isEqual:[UIColor greenColor]]);
    XCTAssertTrue([[UIColor x_colorWithRGBHex:0x0000ff] isEqual:[UIColor blueColor]]);

    XCTAssertTrue([[UIColor x_colorWithRGBHex:0x90C100 alpha:0.5] isEqual:[UIColor colorWithRed:0.56470591f green:0.75686275f blue:0.000 alpha:0.5]]);
}

@end
