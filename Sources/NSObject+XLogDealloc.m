#import <objc/runtime.h>
#import "NSObject+XLogDealloc.h"

@interface AUXLogDealloc : NSObject
@property (nonatomic, strong) NSString* message;
@end

@implementation NSObject (XLogDealloc)

- (void)x_logDealloc {
    static int _associatedKey;
    if (objc_getAssociatedObject(self, &_associatedKey) == nil) {
      AUXLogDealloc *logger = [[AUXLogDealloc alloc] init];
      logger.message =  [NSString stringWithFormat: @"<%@: %p>", [self class], self];
      objc_setAssociatedObject(self, &_associatedKey, logger, OBJC_ASSOCIATION_RETAIN);
    }
}
@end

@implementation AUXLogDealloc
- (void)dealloc {
#ifdef AUX_LOG_AVAILABLE
    AUXLog(@"Dealloc: %@", self.message);
#else
    NSLog(@"Dealloc: %@", self.message);
#endif
}
@end
