// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

#import "AUXLog.h"

void __attribute__((overloadable)) AUXLog(CGRect r) {
    NSLog(@"%@", NSStringFromCGRect(r));
}

void __attribute__((overloadable)) AUXLog(CGPoint p) {
    NSLog(@"%@", NSStringFromCGPoint(p));
}

void __attribute__((overloadable)) AUXLog(CGSize s) {
    NSLog(@"%@", NSStringFromCGSize(s));
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
