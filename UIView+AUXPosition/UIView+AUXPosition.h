// From AUX, the Cocoa categories collection (http://github.com/appscape/AUX)

#import <UIKit/UIKit.h>

@interface UIView (AUXPosition)

#pragma mark - Frame accessors

@property (nonatomic, assign) CGPoint auxFrameOrigin;
@property (nonatomic, assign) CGSize auxFrameSize;

@property (nonatomic,assign) CGFloat auxFrameLeft;
@property (nonatomic,assign) CGFloat auxFrameTop;

// Setting these modifies the origin but not the size.
@property (nonatomic, assign) CGFloat auxFrameRight;
@property (nonatomic, assign) CGFloat auxFrameBottom;

@property (nonatomic, assign) CGFloat auxFrameWidth;
@property (nonatomic, assign) CGFloat auxFrameHeight;

#pragma mark - Bounds accessors

@property (nonatomic, assign) CGPoint auxBoundsOrigin;
@property (nonatomic, assign) CGSize  auxBoundsSize;

@property (nonatomic, assign) CGFloat auxBoundsLeft;
@property (nonatomic, assign) CGFloat auxBoundsTop;

// Setting these modifies the origin but not the size.
@property (nonatomic, assign) CGFloat auxBoundsRight;
@property (nonatomic, assign) CGFloat auxBoundsBottom;

@property (nonatomic, assign) CGFloat auxBoundsWidth;
@property (nonatomic, assign) CGFloat auxBoundsHeight;

@end