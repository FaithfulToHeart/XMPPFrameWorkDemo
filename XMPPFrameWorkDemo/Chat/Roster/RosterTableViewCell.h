//
//  RosterTableViewCell.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drrr.h"
@interface RosterTableViewCell : UITableViewCell{
    DRRRRosterMember* _member;
}
@property (nonatomic,retain) UILabel* nameLabel;
@property (nonatomic,retain) UILabel* statusLabel;
@property (nonatomic,retain) DRRRRosterMember* member;
@end
