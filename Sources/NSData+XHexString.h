// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

@interface NSData(XHexString)

// Returns a hexadecimal string representing bytes contained within NSData. If data is empty, returns an empty string.
- (NSString *)x_hexString;

@end