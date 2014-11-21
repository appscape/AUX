// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

// AUXLog() is an alias for NSLog which uses Clang's function overloading to provide a string description
// for UIKit structs. So instead of writing:
//   NSLog(@"%@", NSStringFromCGPoint(p))
// you can just write:
//   AUXLog(p);
//
// Hint: if you want to disable AUXLog statements in a release build, add DEBUG=1 compiler flag to the 
// Debug configuration. Then in your .pch file, add:
//
// #ifndef DEBUG
// #define AUXLog(x, ...) ((void)0)
// #endif

extern void AUXLog(CGRect r) __attribute__((overloadable));
extern void AUXLog(CGPoint p) __attribute__((overloadable));
extern void AUXLog(CGSize s) __attribute__((overloadable));
extern void AUXLog(id obj) __attribute__((overloadable));
extern void AUXLog(NSString* fmt, ...) __attribute__((overloadable));

#define AUX_LOG_AVAILABLE 1