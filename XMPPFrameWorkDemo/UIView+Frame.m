//
//  UIView+Frame.m
//  健健
//
//  Created by 馍馍帝😈 on 15/7/17.
//  Copyright (c) 2015年 馍馍帝. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
-(CGFloat)bottom
{
    return self.frame.origin.y+self.frame.size.height;
}

-(CGFloat)right
{
    return self.frame.origin.x+self.frame.size.width;
}

-(CGFloat)left
{
    return self.frame.origin.x;
}

-(CGFloat)top
{
    return self.frame.origin.y;
}

-(CGFloat)width
{
    return self.frame.size.width;
}

-(CGFloat)height
{
    return self.frame.size.height;
}

-(void)removeAllView
{
    
        for (UIView *view in self.subviews) {
            [view removeFromSuperview];
        }
    
}

@end
