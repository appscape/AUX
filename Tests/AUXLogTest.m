#import <XCTest/XCTest.h>
#import <asl.h>
#import "AUXLog.h"

static NSString* LastConsoleMessage() {
    uint64_t since = ([[NSDate date] timeIntervalSince1970] - 2);

    NSMutableArray *consoleLog = [NSMutableArray array];

    aslclient client = asl_open(NULL, NULL, ASL_OPT_STDERR);

    aslmsg query = asl_new(ASL_TYPE_QUERY);
    asl_set_query(query, ASL_KEY_MSG, NULL, ASL_QUERY_OP_NOT_EQUAL);
    asl_set_query(query, ASL_KEY_SENDER, "xctest", ASL_QUERY_OP_EQUAL);
    asl_set_query(query, ASL_KEY_TIME, [[NSString stringWithFormat:@"%" PRIu64, since] UTF8String], ASL_QUERY_OP_GREATER_EQUAL | ASL_QUERY_OP_NUMERIC);
    aslresponse response = asl_search(client, query);

    asl_free(query);

    aslmsg message;
    while((message = asl_next(response))) {
        const char *msg = asl_get(message, ASL_KEY_MSG);
        [consoleLog addObject:[NSString stringWithCString:msg encoding:NSUTF8StringEncoding]];
    }

    asl_release(response);
    asl_close(client);

    return [consoleLog lastObject];
}

@interface AUXLogTest : XCTestCase

@end

@implementation AUXLogTest

- (void)testLog
{
    NSError *err = [NSError errorWithDomain:@"somedomain" code:123 userInfo:@{@"foo": @"bar"}];
    AUXLog(err);
    XCTAssertEqualObjects(LastConsoleMessage(), [err description]);

    AUXLog(CGRectMake(10,20,320,155));
    XCTAssertEqualObjects(LastConsoleMessage(), @"{{10, 20}, {320, 155}}");

    AUXLog(CGPointMake(-10,30));
    XCTAssertEqualObjects(LastConsoleMessage(), @"{-10, 30}");

    AUXLog(CGSizeMake(13,37));
    XCTAssertEqualObjects(LastConsoleMessage(), @"{13, 37}");
}

@end
