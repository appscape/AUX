// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

@interface NSObject(XLogDealloc)

// Creates a simple logger object and associates it with self by retaining it.
// Once self gets deallocated, dummy object gets deallocated too, resulting in a log message getting displayed.
- (void)x_logDealloc;
@end
