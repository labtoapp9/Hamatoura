//
//  Macros.h
//  FooProject
//
//  Created by Mona Mouteirek on 12/20/13.
//  Copyright (c) 2013 FOO. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef DLog
#ifdef DEBUG
#define DLog( s, ... ) NSLog( @"%@", [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define DLog( s, ... )
#endif
#endif

#ifndef IPHONE5
#define IPHONE5 [[UIScreen mainScreen] bounds].size.height == 568.0f
#endif

#ifndef RETINA_DISP
#define RETINA_DISP [[UIScreen mainScreen] scale] == 2.0f
#endif

#ifndef FOOS
#define FOOS [[[[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."] objectAtIndex:0] intValue]
#endif

#ifndef IOS7_PLUS
#define IOS7_PLUS [[[[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."] objectAtIndex:0] intValue] >= 7
#endif

#ifndef IOS8_PLUS
#define IOS8_PLUS [[[[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."] objectAtIndex:0] intValue] >= 8
#endif

#ifndef IOS6_PLUS
#define IOS6_PLUS [[[[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."] objectAtIndex:0] intValue] >= 6
#endif

#ifndef OS_VERSION
#define OS_VERSION [UIDevice currentDevice].systemVersion
#endif

#ifndef UUID
#define UUID [[[UIDevice currentDevice] identifierForVendor] UUIDString]
#endif

#ifndef CLIENT
#define CLIENT @"iphone"
#endif

#ifndef DEVICE_IS_IPAD
#define DEVICE_IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#endif

#ifndef APP_VERSION
#define APP_VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#endif

#ifndef APP_BUNDLE_ID
#define APP_BUNDLE_ID [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]
#endif

#ifndef APP_BUILD
#define APP_BUILD [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#endif

#ifndef APP_BUNDLE_NAME
#define APP_BUNDLE_NAME [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"]
#endif

#ifndef IPHONE
#define IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#endif

#define SCREEN_SCALE [[UIScreen mainScreen] scale]

#ifndef SANDBOX
#ifdef DEBUG
#define SANDBOX YES
#else 
#define SANDBOX NO
#endif
#endif
