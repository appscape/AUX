#import <XCTest/XCTest.h>
#import "UIColor+AUXRGBHex.h"

@interface UIColorAuxHexTest : XCTestCase

@end

@implementation UIColorAuxHexTest

- (void)testExample {
    XCTAssertTrue([[UIColor auxColorWithRGBHex:0xff0000] isEqual:[UIColor redColor]]);
    XCTAssertTrue([[UIColor auxColorWithRGBHex:0x00ff00] isEqual:[UIColor greenColor]]);
    XCTAssertTrue([[UIColor auxColorWithRGBHex:0x0000ff] isEqual:[UIColor blueColor]]);

    XCTAssertTrue([[UIColor auxColorWithRGBHex:0x90C100 alpha:0.5] isEqual:[UIColor colorWithRed:0.56470591f green:0.75686275f blue:0.000 alpha:0.5]]);
}

@end
