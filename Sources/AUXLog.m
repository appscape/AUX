// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import "AUXLog.h"

NSString* __attribute__((overloadable)) AUXLogStringify(CGRect r) {
    return NSStringFromCGRect(r);
}

NSString* __attribute__((overloadable)) AUXLogStringify(CGPoint p) {
    return NSStringFromCGPoint(p);
}

NSString* __attribute__((overloadable)) AUXLogStringify(CGSize s) {
    return NSStringFromCGSize(s);
}

void __attribute__((overloadable)) AUXLog(CGRect r) {
    NSLog(@"%@", AUXLogStringify(r));
}

void __attribute__((overloadable)) AUXLog(CGPoint p) {
    NSLog(@"%@", AUXLogStringify(p));
}

void __attribute__((overloadable)) AUXLog(CGSize s) {
    NSLog(@"%@", AUXLogStringify(s));
}

void __attribute__((overloadable)) AUXLog(id obj) {
    NSLog(@"%@", [obj description]);
}

void __attribute__((overloadable)) AUXLog(NSString *fmt, ...) {
    va_list argp;
	va_start(argp, fmt);
	NSLogv(fmt, argp);
	va_end(argp);
}
