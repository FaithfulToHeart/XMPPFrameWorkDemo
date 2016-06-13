//
//  ChatTableViewCell.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drrr.h"
#define ChatTableViewCellFontSize 17.0f

@interface ChatTableViewCell : UITableViewCell{
    DRRRMessageContent* _message;
}
@property (nonatomic,retain) DRRRMessageContent* message;
@property (nonatomic,retain) UITextView* messageText;
@property (nonatomic,retain) UILabel* infoLabel;
@end
