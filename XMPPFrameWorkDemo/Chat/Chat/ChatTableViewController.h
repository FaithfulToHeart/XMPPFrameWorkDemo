//
//  ChatTableViewController.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drrr.h"
#import "ChatTableView.h"
@interface ChatTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
}
@property (nonatomic,retain) DRRRRosterMember* member;
@property (nonatomic,retain) DRRRChatRoom* chatRoom;
@property (nonatomic,retain) IBOutlet UIView* sendMessageView;
@property (nonatomic,retain) IBOutlet UITextView* sendMessageText;
@property (nonatomic,retain) IBOutlet UIButton* sendMessageButton;
@property (nonatomic,retain) ChatTableView* tableView;
@end
