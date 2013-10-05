//
//  Test.m
//  AUX
//
//  Created by Esad Hajdarevic on 05.10.13.
//
//

#import <XCTest/XCTest.h>
#import "UIView+AUXPosition.h"

@interface UIViewAuxPositionTest : XCTestCase {
    UIView *_testView;
}

@end

@implementation UIViewAuxPositionTest

- (void)setUp {
    _testView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,480)];
}

- (void)testFrame {
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)0);
    XCTAssertEqual(_testView.auxFrameRight, (CGFloat)320);

    _testView.auxFrameLeft += 10;
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)10);

    _testView.auxFrameLeft += 10.5;
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)20.5);

    _testView.auxFrameLeft = -20;
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)-20);

    XCTAssertEqual(_testView.auxFrameWidth, (CGFloat)320);
    XCTAssertEqual(_testView.auxFrameRight, (CGFloat)300);

    // Setting right moves the origin, without resizing:
    _testView.auxFrameRight = 400;
    XCTAssertEqual(_testView.auxFrameWidth, (CGFloat)320);
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)80);

    // Width is always set from the origin:
    _testView.auxFrameWidth = 20;
    XCTAssertEqual(_testView.auxFrameLeft, (CGFloat)80);
    XCTAssertEqual(_testView.auxFrameRight, (CGFloat)100);
    XCTAssertEqual(_testView.auxFrameOrigin, CGPointMake(80,0));

    _testView.auxFrameTop -= 10;
    XCTAssertEqual(_testView.auxFrameTop, (CGFloat)-10);
    _testView.auxFrameTop += 20.5;
    XCTAssertEqual(_testView.auxFrameTop, (CGFloat)10.5);

    _testView.auxFrameHeight = 100;
    XCTAssertEqual(_testView.auxFrameBottom, (CGFloat)110.5);

    _testView.auxFrameTop = 100.0;
    XCTAssertEqual(_testView.auxFrameBottom, (CGFloat)200);
    XCTAssertEqual(_testView.auxFrameSize, CGSizeMake(20,100));


    _testView.auxFrameBottom = -20.0;
    XCTAssertEqual(_testView.auxFrameHeight, (CGFloat)100);

    _testView.frame = CGRectMake(0,0,100,100);
    _testView.auxFrameSize = CGSizeMake(200,200);
    XCTAssertEqual(_testView.auxFrameRight, (CGFloat)200);
    XCTAssertEqual(_testView.auxFrameBottom, (CGFloat)200);
}

- (void)testBounds {
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)0);
    XCTAssertEqual(_testView.auxBoundsRight, (CGFloat)320);

    _testView.auxBoundsLeft += 10;
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)10);

    _testView.auxBoundsLeft += 10.5;
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)20.5);

    _testView.auxBoundsLeft = -20;
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)-20);

    XCTAssertEqual(_testView.auxBoundsWidth, (CGFloat)320);
    XCTAssertEqual(_testView.auxBoundsRight, (CGFloat)300);

    // Setting right moves the origin, without resizing:
    _testView.auxBoundsRight = 400;
    XCTAssertEqual(_testView.auxBoundsWidth, (CGFloat)320);
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)80);

    // Width is always set from the origin:
    _testView.auxBoundsWidth = 20;
    XCTAssertEqual(_testView.auxBoundsLeft, (CGFloat)80);
    XCTAssertEqual(_testView.auxBoundsRight, (CGFloat)100);
    XCTAssertEqual(_testView.auxBoundsOrigin, CGPointMake(80,0));

    _testView.auxBoundsTop -= 10;
    XCTAssertEqual(_testView.auxBoundsTop, (CGFloat)-10);
    _testView.auxBoundsTop += 20.5;
    XCTAssertEqual(_testView.auxBoundsTop, (CGFloat)10.5);

    _testView.auxBoundsHeight = 100;
    XCTAssertEqual(_testView.auxBoundsBottom, (CGFloat)110.5);

    _testView.auxBoundsTop = 100.0;
    XCTAssertEqual(_testView.auxBoundsBottom, (CGFloat)200);
    XCTAssertEqual(_testView.auxBoundsSize, CGSizeMake(20,100));


    _testView.auxBoundsBottom = -20.0;
    XCTAssertEqual(_testView.auxBoundsHeight, (CGFloat)100);

    _testView.bounds = CGRectMake(0,0,100,100);
    _testView.auxBoundsSize = CGSizeMake(200,200);
    XCTAssertEqual(_testView.auxBoundsRight, (CGFloat)200);
    XCTAssertEqual(_testView.auxBoundsBottom, (CGFloat)200);
}

@end
