//
//  InviteMemberToChatRoomViewController.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drrr.h"
@interface InviteMemberToChatRoomViewController : UITableViewController{
    
}
@property (nonatomic,retain) UITextField* memberJidText;
@property (nonatomic,retain) UITextField* reasonText;
@property (nonatomic,retain) UITextField* passwordText;
@property (nonatomic,retain) DRRRChatRoom* chatRoom;
@end
