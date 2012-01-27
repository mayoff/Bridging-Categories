#import "BridgingCategories.h"

@implementation NSArray (bridging)
+ (NSArray *):(CFArrayRef)cfArray { return (__bridge id)cfArray; }
- (CFArrayRef)CFArray { return (__bridge CFArrayRef)self; }
@end

@implementation NSAttributedString (bridging)
+ (NSAttributedString *):(CFAttributedStringRef)cfAttributedString { return (__bridge id)cfAttributedString; }
- (CFAttributedStringRef)CFAttributedString { return (__bridge CFAttributedStringRef)self; }
@end

@implementation NSCalendar (bridging)
+ (NSCalendar *):(CFCalendarRef)cfCalendar { return (__bridge id)cfCalendar; }
- (CFCalendarRef)CFCalendar { return (__bridge CFCalendarRef)self; }
@end

@implementation NSCharacterSet (bridging)
+ (NSCharacterSet *):(CFCharacterSetRef)cfCharacterSet { return (__bridge id)cfCharacterSet; }
- (CFCharacterSetRef)CFCharacterSet { return (__bridge CFCharacterSetRef)self; }
@end

@implementation NSData (bridging)
+ (NSData *):(CFDataRef)cfData { return (__bridge id)cfData; }
- (CFDataRef)CFData { return (__bridge CFDataRef)self; }
@end

@implementation NSDate (bridging)
+ (NSDate *):(CFDateRef)cfDate { return (__bridge id)cfDate; }
- (CFDateRef)CFDate { return (__bridge CFDateRef)self; }
@end

@implementation NSDictionary (bridging)
+ (NSDictionary *):(CFDictionaryRef)cfDictionary { return (__bridge id)cfDictionary; }
- (CFDictionaryRef)CFDictionary { return (__bridge CFDictionaryRef)self; }
@end

@implementation NSError (bridging)
+ (NSError *):(CFErrorRef)cfError { return (__bridge id)cfError; }
- (CFErrorRef)CFError { return (__bridge CFErrorRef)self; }
@end

@implementation NSLocale (bridging)
+ (NSLocale *):(CFLocaleRef)cfLocale { return (__bridge id)cfLocale; }
- (CFLocaleRef)CFLocale { return (__bridge CFLocaleRef)self; }
@end

@implementation NSMutableArray (bridging)
+ (NSMutableArray *):(CFMutableArrayRef)cfMutableArray { return (__bridge id)cfMutableArray; }
- (CFMutableArrayRef)CFMutableArray { return (__bridge CFMutableArrayRef)self; }
@end

@implementation NSMutableAttributedString (bridging)
+ (NSMutableAttributedString *):(CFMutableAttributedStringRef)cfMutableAttributedString { return (__bridge id)cfMutableAttributedString; }
- (CFMutableAttributedStringRef)CFMutableAttributedString { return (__bridge CFMutableAttributedStringRef)self; }
@end

@implementation NSMutableCharacterSet (bridging)
+ (NSMutableCharacterSet *):(CFMutableCharacterSetRef)cfMutableCharacterSet { return (__bridge id)cfMutableCharacterSet; }
- (CFMutableCharacterSetRef)CFMutableCharacterSet { return (__bridge CFMutableCharacterSetRef)self; }
@end

@implementation NSMutableData (bridging)
+ (NSMutableData *):(CFMutableDataRef)cfMutableData { return (__bridge id)cfMutableData; }
- (CFMutableDataRef)CFMutableData { return (__bridge CFMutableDataRef)self; }
@end

@implementation NSMutableDictionary (bridging)
+ (NSMutableDictionary *):(CFMutableDictionaryRef)cfMutableDictionary { return (__bridge id)cfMutableDictionary; }
- (CFMutableDictionaryRef)CFMutableDictionary { return (__bridge CFMutableDictionaryRef)self; }
@end

@implementation NSMutableSet (bridging)
+ (NSMutableSet *):(CFMutableSetRef)cfMutableSet { return (__bridge id)cfMutableSet; }
- (CFMutableSetRef)CFMutableSet { return (__bridge CFMutableSetRef)self; }
@end

@implementation NSMutableString (bridging)
+ (NSMutableString *):(CFMutableStringRef)cfMutableString { return (__bridge id)cfMutableString; }
- (CFMutableStringRef)CFMutableString { return (__bridge CFMutableStringRef)self; }
@end

@implementation NSNumber (bridging)
+ (NSNumber *):(CFNumberRef)cfNumber { return (__bridge id)cfNumber; }
- (CFNumberRef)CFNumber { return (__bridge CFNumberRef)self; }
@end

@implementation NSInputStream (bridging)
+ (NSInputStream *):(CFReadStreamRef)cfReadStream { return (__bridge id)cfReadStream; }
- (CFReadStreamRef)CFReadStream { return (__bridge CFReadStreamRef)self; }
@end

@implementation NSTimer (bridging)
+ (NSTimer *):(CFRunLoopTimerRef)cfRunLoopTimer { return (__bridge id)cfRunLoopTimer; }
- (CFRunLoopTimerRef)CFRunLoopTimer { return (__bridge CFRunLoopTimerRef)self; }
@end

@implementation NSSet (bridging)
+ (NSSet *):(CFSetRef)cfSet { return (__bridge id)cfSet; }
- (CFSetRef)CFSet { return (__bridge CFSetRef)self; }
@end

@implementation NSString (bridging)
+ (NSString *):(CFStringRef)cfString { return (__bridge id)cfString; }
- (CFStringRef)CFString { return (__bridge CFStringRef)self; }
@end

@implementation NSTimeZone (bridging)
+ (NSTimeZone *):(CFTimeZoneRef)cfTimeZone { return (__bridge id)cfTimeZone; }
- (CFTimeZoneRef)CFTimeZone { return (__bridge CFTimeZoneRef)self; }
@end

@implementation NSURL (bridging)
+ (NSURL *):(CFURLRef)cfURL { return (__bridge id)cfURL; }
- (CFURLRef)CFURL { return (__bridge CFURLRef)self; }
@end

@implementation NSOutputStream (bridging)
+ (NSOutputStream *):(CFWriteStreamRef)cfWriteStream { return (__bridge id)cfWriteStream; }
- (CFWriteStreamRef)CFWriteStream { return (__bridge CFWriteStreamRef)self; }
@end

