// UIView+AUXPosition.h
// From AUX, the Cocoa categories collection

#import "UIView+AUXPosition.h"

@implementation UIView (AUXPosition)

- (CGPoint)auxFrameOrigin {
    return self.frame.origin;
}

- (void)setAuxFrameOrigin:(CGPoint)newOrigin {
    CGRect rect = self.frame;
    rect.origin = newOrigin;
    self.frame = rect;
}

- (CGSize)auxFrameSize {
    return self.frame.size;
}

- (void)setAuxFrameSize:(CGSize)newSize {
    CGRect rect = self.frame;
    rect.size = newSize;
    self.frame = rect;
}

- (CGFloat)auxFrameLeft {
    return self.frame.origin.x;
}

- (void)setAuxFrameLeft:(CGFloat)newX {
    CGRect rect = self.frame;
    rect.origin.x = newX;
    self.frame = rect;
}

- (CGFloat)auxFrameTop {
    return self.frame.origin.y;
}

- (void)setAuxFrameTop:(CGFloat)newY {
    CGRect rect = self.frame;
    rect.origin.y = newY;
    self.frame = rect;
}

- (CGFloat)auxFrameRight {
    CGRect rect = self.frame;
    return rect.origin.x + rect.size.width;
}

- (void)setAuxFrameRight:(CGFloat)newRight {
    CGRect rect = self.frame;
    rect.origin.x = newRight - rect.size.width;
    self.frame = rect;
}

- (CGFloat)auxFrameBottom {
    CGRect rect = self.frame;
    return rect.origin.y + rect.size.height;
}

- (void)setAuxFrameBottom:(CGFloat)newBottom {
    CGRect rect = self.frame;
    rect.origin.y = newBottom - rect.size.height;
    self.frame = rect;
}

- (CGFloat)auxFrameWidth {
    return self.frame.size.width;
}

- (void)setAuxFrameWidth:(CGFloat)newWidth {
    CGRect rect = self.frame;
    rect.size.width = newWidth;
    self.frame = rect;
}

- (CGFloat)auxFrameHeight {
    return self.frame.size.height;
}

- (void)setAuxFrameHeight:(CGFloat)newHeight {
    CGRect rect = self.frame;
    rect.size.height = newHeight;
    self.frame = rect;

}

- (CGPoint)auxBoundsOrigin {
    return self.bounds.origin;
}

- (void)setAuxBoundsOrigin:(CGPoint)newOrigin {
    CGRect rect = self.bounds;
    rect.origin = newOrigin;
    self.bounds = rect;
}

- (CGSize)auxBoundsSize {
    return self.bounds.size;
}

- (void)setAuxBoundsSize:(CGSize)newSize {
    CGRect rect = self.bounds;
    rect.size = newSize;
    self.bounds = rect;
}

- (CGFloat)auxBoundsLeft {
    return self.bounds.origin.x;
}

- (void)setAuxBoundsLeft:(CGFloat)newX {
    CGRect rect = self.bounds;
    rect.origin.x = newX;
    self.bounds = rect;
}

- (CGFloat)auxBoundsTop {
    return self.bounds.origin.y;
}

- (void)setAuxBoundsTop:(CGFloat)newY {
    CGRect rect = self.bounds;
    rect.origin.y = newY;
    self.bounds = rect;
}

- (CGFloat)auxBoundsRight {
    CGRect rect = self.bounds;
    return rect.origin.x + rect.size.width;
}

- (void)setAuxBoundsRight:(CGFloat)newRight {
    CGRect rect = self.bounds;
    rect.origin.x = newRight - rect.size.width;
    self.bounds = rect;
}

- (CGFloat)auxBoundsBottom {
    CGRect rect = self.bounds;
    return rect.origin.y + rect.size.height;
}

- (void)setAuxBoundsBottom:(CGFloat)newBottom {
    CGRect rect = self.bounds;
    rect.origin.y = newBottom - rect.size.height;
    self.bounds = rect;
}

- (CGFloat)auxBoundsWidth {
    return self.bounds.size.width;
}

- (void)setAuxBoundsWidth:(CGFloat)newWidth {
    CGRect rect = self.bounds;
    rect.size.width = newWidth;
    self.bounds = rect;
}

- (CGFloat)auxBoundsHeight {
    return self.bounds.size.height;
}

- (void)setAuxBoundsHeight:(CGFloat)newHeight {
    CGRect rect = self.bounds;
    rect.size.height = newHeight;
    self.bounds = rect;
}

@end