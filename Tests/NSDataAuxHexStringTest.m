#import <XCTest/XCTest.h>
#import "NSData+AUXHexString.h"

@interface NSDataAuxHexStringTest : XCTestCase

@end

@implementation NSDataAuxHexStringTest

- (void)test
{
    const unsigned char bytes[] = {0xde,0xad,0xbe,0xef};
    NSData *d = [NSData dataWithBytes:(const void*)bytes length:4];
    XCTAssertEqualObjects([d auxHexString], @"deadbeef");

    NSData *d2 = [@"Nulla vitae elit libero, a pharetra augue." dataUsingEncoding:NSASCIIStringEncoding];
    XCTAssertEqualObjects([d2 auxHexString], @"4e756c6c6120766974616520656c6974206c696265726f2c20612070686172657472612061756775652e");

    NSData *dEmpty = [NSData data];
    XCTAssertEqualObjects([dEmpty auxHexString], @"");
}

@end
