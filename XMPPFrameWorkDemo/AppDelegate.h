//
//  AppDelegate.h
//  XMPPFrameWorkDemo
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootLoginViewController.h"
#import "DDFileLogger.h"
#import "DDASLLogger.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    DDFileLogger* _fileLogger;
}
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,retain) RootLoginViewController* viewController;
@property (nonatomic,readonly) DDFileLogger* fileLogger;
@end

