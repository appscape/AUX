// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

// AUXLog() is an alias for NSLog which uses Clang's function overloading to provide a string description
// for UIKit structs. So instead of writing:
//   NSLog(@"%@", NSStringFromCGPoint(p))
// you can just write:
//   AUXLog(p);
//
// AUXLogStringify(...) is provided if you want to insert the string description in an existing message, i.e.
//   NSLog(@"Point is %@, AUXLogStringify(p))
//
// Hint: if you want to disable AUXLog statements in an release build, add DEBUG compiler flag to Debug configuration,
// then in your .pch file, add:
//
// #ifndef DEBUG
// #define AUXLog(x, ...) ((void)0)
// #endif

extern NSString* AUXLogStringify(CGRect r) __attribute__((overloadable));
extern NSString* AUXLogStringify(CGPoint p) __attribute__((overloadable));
extern NSString* AUXLogStringify(CGSize s) __attribute__((overloadable));

extern void AUXLog(CGRect r) __attribute__((overloadable));
extern void AUXLog(CGPoint p) __attribute__((overloadable));
extern void AUXLog(CGSize s) __attribute__((overloadable));
extern void AUXLog(NSString* fmt, ...) __attribute__((overloadable));