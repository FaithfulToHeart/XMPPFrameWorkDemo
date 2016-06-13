//
//  RosterViewController.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RosterNewViewController.h"
@interface RosterViewController : UITableViewController<RosterNewViewControllerDelegate,UIAlertViewDelegate>{
    BOOL _observer;
}
@property (nonatomic,retain) UIButton* titleButton;
@end
