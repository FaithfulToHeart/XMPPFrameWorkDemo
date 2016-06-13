//
//  CellCommand.h
//  XMPPFrameWorkDemo
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CellCommand : NSObject
@property (nonatomic,copy) NSString* title;
@property (nonatomic,assign) SEL action;
-(id)initWithTitle:(NSString*)title action:(SEL)action;
+(id)cellCommandWithTitle:(NSString*)title action:(SEL)action;
@end
