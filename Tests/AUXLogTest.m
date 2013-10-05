#import <XCTest/XCTest.h>
#import "AUXLog.h"

@interface AUXLogTest : XCTestCase
@end

@implementation AUXLogTest

- (void)testLog
{
    AUXLog(CGRectMake(1,1,1,1));
    AUXLog(@"foo");
    AUXLog(@"Foo %@ + %f", @"bar", 3.4);
    AUXLog(@"R=%@", AUXLogStringify(CGRectMake(1,1,1,1)));
}

@end
