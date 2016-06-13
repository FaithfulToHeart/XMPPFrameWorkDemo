//
//  ChatTableView.m
//  XMPPFrameWorkDemo
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "ChatTableView.h"

@implementation ChatTableView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.CloseKeyBoard) {
        self.CloseKeyBoard();
    }
}

@end
