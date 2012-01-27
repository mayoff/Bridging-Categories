ARC sure is great, isn't it?  I don't miss littering my code with `retain`, `release`, and `autorelease`.

### A __bridge to everywhere

Pretty much the only downside of ARC is that casting between toll-free bridging types (like `CFStringRef` to `NSString` and back) is a little more verbose.  Before ARC, I wrote this:

```objective-c
NSString *stringObject = (NSString *)cfString;
CFStringRef cfString = (CFStringRef)stringObject;
```

After ARC, I have to write this:

```objective-c
NSString *stringObject = (__bridge NSString *)cfString;
CFStringRef cfString = (__bridge CFStringRef)stringObject;
```

Of course, there are some shortcuts.  It's a little shorter to write this:

```objective-c
NSString *stringObject = (__bridge id)cfString;
CFStringRef cfString = (__bridge void *)stringObject; // or (__bridge CFTypeRef)stringObject
```

I could even define a couple of macros:

```objective-c
#define fromCF (__bridge id)
#define toCF (__bridge CFTypeRef)

NSString *stringObject = fromCF cfString;
CFStringRef cfString = toCF stringObject;
```

But using macros sometimes confuses Xcode's autocompletion mechanism.  And with or without macros, using the generic types `void *`, `CFTypeRef`, and `id` means giving up compiler type checking.

### Free passes if you're not toll-free bridged?

On the other hand, some *non*-toll-free-bridged types have handy conversions methods:

```objective-c
UIColor *uiColor = [UIColor colorWithCGColor:cgColor];
CGColorRef cgColor = uiColor.CGColor;

UIBezierPath *uiPath = [UIBezierPath bezierPathWithCGPath:cgPath];
CGPathRef cgPath = uiPath.CGPath;

UIImage *uiImage = [UIImage imageWithCGImage:cgImage];
CGImageRef cgImage = uiImage.CGImage;
```

There are probably others, but I happen to use those a lot.

### The categorial imperative

Thanks to the magic of Objective-C categories, we can imbue the toll-free-bridged classes with convenience methods too.  For example, we can trivially give `NSString` a `CFString` method:

```objective-c
@interface NSString (bridging)

@property (nonatomic, readonly) CFStringRef CFString;

@end

@implementation NSString (bridging)

- (CFStringRef)CFString {
    return (__bridge CFStringRef)self;
}

@end

// Use it like this:

    CFStringRef cfString = stringObject.CFString;
```

That's pretty nice.  What about the other direction?  We could follow the pattern of `UIColor` and friends:

```objective-c
+ (NSString *)stringWithCFString:(CFStringRef)cfString {
    return (__bridge NSString *)cfString;
}

// Use it like this:

    NSString *stringObject = [NSString stringWithCFString:cfString];
```

But that's even more verbose than using `__bridge` directly.  Let's pick a shorter selector.  How much shorter can we make it?  Hold on to your britches, because the answer might surprise you:

```objective-c
+ (NSString *):(CFStringRef)cfString {
    return (__bridge NSString *)cfString;
}

// Use it like this:

    NSString *stringObject = [NSString:cfString];
```

Yes, you can have a selector that's nothing but a colon!  It doesn't get any shorter than that.  I think it's a pleasant combination of brevity and expressiveness, if a little exotic.

So, this little repository contains a `bridging` category for each documented toll-free-bridged class in the Foundation framework.  All of the categories are declared in one header file, `BridgingCategories.h`, and defined in one source file, `BridgingCategories.m`.  These are the toll-free-bridged types:

- `CFArrayRef` / `NSArray`
- `CFAttributedStringRef` / `NSAttributedString`
- `CFCalendarRef` / `NSCalendar`
- `CFCharacterSetRef` / `NSCharacterSet`
- `CFDataRef` / `NSData`
- `CFDateRef` / `NSDate`
- `CFDictionaryRef` / `NSDictionary`
- `CFErrorRef` / `NSError`
- `CFLocaleRef` / `NSLocale`
- `CFMutableArrayRef` / `NSMutableArray`
- `CFMutableAttributedStringRef` / `NSMutableAttributedString`
- `CFMutableCharacterSetRef` / `NSMutableCharacterSet`
- `CFMutableDataRef` / `NSMutableData`
- `CFMutableDictionaryRef` / `NSMutableDictionary`
- `CFMutableSetRef` / `NSMutableSet`
- `CFMutableStringRef` / `NSMutableString`
- `CFNumberRef` / `NSNumber`
- `CFReadStreamRef` / `NSInputStream`
- `CFRunLoopTimerRef` / `NSTimer`
- `CFSetRef` / `NSSet`
- `CFStringRef` / `NSString`
- `CFTimeZoneRef` / `NSTimeZone`
- `CFURLRef` / `NSURL`
- `CFWriteStreamRef` / `NSOutputStream`

The official Apple list is found [here](http://developer.apple.com/library/mac/#documentation/CoreFoundation/Conceptual/CFDesignConcepts/Articles/tollFreeBridgedTypes.html).

The contents of this repository are dedicated to the public domain, in accordance with the [CC0 1.0 Universal Public Domain Dedication](http://creativecommons.org/publicdomain/zero/1.0/), which is reproduced in the file `COPYRIGHT`.

