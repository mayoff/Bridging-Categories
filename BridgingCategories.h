#import <Foundation/Foundation.h>

@interface NSArray (bridging)
+ (NSArray *):(CFArrayRef)cfArray;
@property (nonatomic, readonly) CFArrayRef CFArray;
@end

@interface NSAttributedString (bridging)
+ (NSAttributedString *):(CFAttributedStringRef)cfAttributedString;
@property (nonatomic, readonly) CFAttributedStringRef CFAttributedString;
@end

@interface NSCalendar (bridging)
+ (NSCalendar *):(CFCalendarRef)cfCalendar;
@property (nonatomic, readonly) CFCalendarRef CFCalendar;
@end

@interface NSCharacterSet (bridging)
+ (NSCharacterSet *):(CFCharacterSetRef)cfCharacterSet;
@property (nonatomic, readonly) CFCharacterSetRef CFCharacterSet;
@end

@interface NSData (bridging)
+ (NSData *):(CFDataRef)cfData;
@property (nonatomic, readonly) CFDataRef CFData;
@end

@interface NSDate (bridging)
+ (NSDate *):(CFDateRef)cfDate;
@property (nonatomic, readonly) CFDateRef CFDate;
@end

@interface NSDictionary (bridging)
+ (NSDictionary *):(CFDictionaryRef)cfDictionary;
@property (nonatomic, readonly) CFDictionaryRef CFDictionary;
@end

@interface NSError (bridging)
+ (NSError *):(CFErrorRef)cfError;
@property (nonatomic, readonly) CFErrorRef CFError;
@end

@interface NSLocale (bridging)
+ (NSLocale *):(CFLocaleRef)cfLocale;
@property (nonatomic, readonly) CFLocaleRef CFLocale;
@end

@interface NSMutableArray (bridging)
+ (NSMutableArray *):(CFMutableArrayRef)cfMutableArray;
@property (nonatomic, readonly) CFMutableArrayRef CFMutableArray;
@end

@interface NSMutableAttributedString (bridging)
+ (NSMutableAttributedString *):(CFMutableAttributedStringRef)cfMutableAttributedString;
@property (nonatomic, readonly) CFMutableAttributedStringRef CFMutableAttributedString;
@end

@interface NSMutableCharacterSet (bridging)
+ (NSMutableCharacterSet *):(CFMutableCharacterSetRef)cfMutableCharacterSet;
@property (nonatomic, readonly) CFMutableCharacterSetRef CFMutableCharacterSet;
@end

@interface NSMutableData (bridging)
+ (NSMutableData *):(CFMutableDataRef)cfMutableData;
@property (nonatomic, readonly) CFMutableDataRef CFMutableData;
@end

@interface NSMutableDictionary (bridging)
+ (NSMutableDictionary *):(CFMutableDictionaryRef)cfMutableDictionary;
@property (nonatomic, readonly) CFMutableDictionaryRef CFMutableDictionary;
@end

@interface NSMutableSet (bridging)
+ (NSMutableSet *):(CFMutableSetRef)cfMutableSet;
@property (nonatomic, readonly) CFMutableSetRef CFMutableSet;
@end

@interface NSMutableString (bridging)
+ (NSMutableString *):(CFMutableStringRef)cfMutableString;
@property (nonatomic, readonly) CFMutableStringRef CFMutableString;
@end

@interface NSNumber (bridging)
+ (NSNumber *):(CFNumberRef)cfNumber;
@property (nonatomic, readonly) CFNumberRef CFNumber;
@end

@interface NSInputStream (bridging)
+ (NSInputStream *):(CFReadStreamRef)cfReadStream;
@property (nonatomic, readonly) CFReadStreamRef CFReadStream;
@end

@interface NSTimer (bridging)
+ (NSTimer *):(CFRunLoopTimerRef)cfRunLoopTimer;
@property (nonatomic, readonly) CFRunLoopTimerRef CFRunLoopTimer;
@end

@interface NSSet (bridging)
+ (NSSet *):(CFSetRef)cfSet;
@property (nonatomic, readonly) CFSetRef CFSet;
@end

@interface NSString (bridging)
+ (NSString *):(CFStringRef)cfString;
@property (nonatomic, readonly) CFStringRef CFString;
@end

@interface NSTimeZone (bridging)
+ (NSTimeZone *):(CFTimeZoneRef)cfTimeZone;
@property (nonatomic, readonly) CFTimeZoneRef CFTimeZone;
@end

@interface NSURL (bridging)
+ (NSURL *):(CFURLRef)cfURL;
@property (nonatomic, readonly) CFURLRef CFURL;
@end

@interface NSOutputStream (bridging)
+ (NSOutputStream *):(CFWriteStreamRef)cfWriteStream;
@property (nonatomic, readonly) CFWriteStreamRef CFWriteStream;
@end

