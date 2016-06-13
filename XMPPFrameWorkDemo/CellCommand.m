//
//  CellCommand.m
//  XMPPFrameWorkDemo
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "CellCommand.h"
#import "drrr.h"
#import "XmlViewController.h"

#define CELL_IDENTITY @"cell-command"
#pragma mark - CellComamnd
@implementation CellCommand
-(id)initWithTitle:(NSString *)title action:(SEL)action{
    self=[super init];
    if (self){
        self.title=title;
        self.action=action;
    }
    return self;
}
+(id)cellCommandWithTitle:(NSString *)title action:(SEL)action{
    CellCommand* cellCommand=[[CellCommand alloc]initWithTitle:title action:action];
    return cellCommand;
}

@end
