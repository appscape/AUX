// From AUX, the Cocoa categories collection http://github.com/appscape/AUX

@implementation NSData(XHexString)

- (NSString *)x_hexString {
    const unsigned char *dataBuffer = (const unsigned char *)[self bytes];

    if (!dataBuffer) return @"";

    NSUInteger          dataLength  = [self length];
    NSMutableString     *hexString  = [NSMutableString stringWithCapacity:(dataLength * 2)];

    for (int i = 0; i < dataLength; ++i) {
        [hexString appendString:[NSString stringWithFormat:@"%02hhx", dataBuffer[i]]];
    }

    return [NSString stringWithString:hexString]; // Return immutable string
}

@end