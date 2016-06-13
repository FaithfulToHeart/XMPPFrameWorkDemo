//
//  ChatTableViewCell.m
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "ChatTableViewCell.h"

@implementation ChatTableViewCell
@dynamic message;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _infoLabel=[[UILabel alloc]initWithFrame:CGRectMake(5.0f, 0.0f, self.frame.size.width-10, 30.0f)];
        _infoLabel.font=[UIFont systemFontOfSize:14.0f];
        _infoLabel.textColor=[UIColor grayColor];
        [self addSubview:_infoLabel];
        _messageText=[[UITextView alloc]initWithFrame:CGRectMake(0.0f, 15.0f, 320, self.frame.size.height-11.0f)];
        _messageText.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        _messageText.showsHorizontalScrollIndicator=NO;
        _messageText.showsVerticalScrollIndicator=NO;
        _messageText.editable=NO;
        _messageText.scrollEnabled=NO;
        _messageText.backgroundColor=[UIColor clearColor];
        _messageText.font=[UIFont systemFontOfSize:ChatTableViewCellFontSize];
        [self insertSubview:_messageText atIndex:0];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)prepareForReuse{
    self.infoLabel.text=@"";
    self.messageText.text=@"";
    self.infoLabel.textAlignment=NSTextAlignmentLeft;
    self.messageText.textAlignment=NSTextAlignmentLeft;
    self.backgroundColor=[UIColor whiteColor];
}
-(void)setMessage:(DRRRMessageContent *)message{

    _message=message;
    NSDateFormatter* formatter=[[NSDateFormatter alloc]init] ;
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    NSString* timeStr=[formatter stringFromDate:message.showTime];
    if (message.mySender){
        self.backgroundColor=[UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.03f];
        self.infoLabel.textAlignment=NSTextAlignmentRight;
        self.messageText.textAlignment=NSTextAlignmentRight;
        if (message.isGroupChat){
            self.infoLabel.text=[NSString stringWithFormat:@"%@  %@",message.fromName,timeStr];
        }
        else if (message.isChat){
            self.infoLabel.text=timeStr;
        }
        
    }
    else{
        
        DebugLog(@"%@",message.body);
        
        self.backgroundColor=[UIColor whiteColor];
        self.messageText.textAlignment=NSTextAlignmentLeft;
        self.infoLabel.textAlignment=NSTextAlignmentLeft;
        self.infoLabel.text=[NSString stringWithFormat:@"%@  %@",message.fromName,timeStr];
        self.messageText.text=message.body;
        
        
       
    }
}
-(DRRRMessageContent*)message{
    return _message;
}




@end
