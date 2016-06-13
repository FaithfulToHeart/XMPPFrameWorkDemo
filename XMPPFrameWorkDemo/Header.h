//
//  Header.h
//  健健
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//
#ifdef __OBJC__
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
#import "UIView+Frame.h"
#import "MJRefreshNormalHeader.h"
#import "MJRefreshBackNormalFooter.h"
#import "MBProgressHUD.h"
#import "UIImageView+WebCache.h"
#import "UIButton+WebCache.h"
#import "UITextView+Placeholder.h"
#import "Masonry.h"
#endif

#ifndef ___Header_h
#define ___Header_h
#endif

//版本号
#define VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define SINGLE_LINE_WIDTH (1 / [UIScreen mainScreen].scale)

// 屏幕的宽
#define MSW ([UIScreen mainScreen].bounds.size.width)

// 屏幕的高
#define MSH ([UIScreen mainScreen].bounds.size.height)

// 颜色 rgb
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define NavHeight 64

#define TabbarHeight 49

#define Width(a) (CGSizeEqualToSize(CGSizeMake(320, 480), [[UIScreen mainScreen] bounds].size) ?(a) :(CGSizeEqualToSize(CGSizeMake(320, 568), [[UIScreen mainScreen] bounds].size) ? (a) : (CGSizeEqualToSize(CGSizeMake(375, 667), [[UIScreen mainScreen] bounds].size) ?(a*375.0/320.0) : (CGSizeEqualToSize(CGSizeMake(414, 736), [[UIScreen mainScreen] bounds].size) ?(a*414.0/320.0) : a))))

#define kAppdelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

#define Height(a) (CGSizeEqualToSize(CGSizeMake(320, 480), [[UIScreen mainScreen] bounds].size) ?(a) :(CGSizeEqualToSize(CGSizeMake(320, 568), [[UIScreen mainScreen] bounds].size) ? (a) : (CGSizeEqualToSize(CGSizeMake(375, 667), [[UIScreen mainScreen] bounds].size) ?(a*375.0/320.0) : (CGSizeEqualToSize(CGSizeMake(414, 736), [[UIScreen mainScreen] bounds].size) ?(a*414.0/320.0) : a))))

#if DEBUG
#define DebugLog(...) NSLog(__VA_ARGS__)
#define DebugMethod() NSLog(@"%s in %@",__func__,[self class])
#else
#define DebugLog(...)
#define DebugMethod()
#endif