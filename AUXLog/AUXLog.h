// From AUX, the Cocoa categories collection (http://github.com/appscape/AUX)

// AUXLog is a simple macro that expands to NSLog when DEBUG compile flag is set,
// or does nothing if not.
//
// Useful for logging during developing without having to clean up the log statements
// for the release build.

#ifdef DEBUG
#define AUXLog(xx, ...) NSLog(@"%s(%d): " xx, ((strrchr(__FILE__, '/') ? : __FILE__- 1) + 1), __LINE__, ##__VA_ARGS__)
#else
#define AUXLog(xx, ...) ((void)0)
#endif