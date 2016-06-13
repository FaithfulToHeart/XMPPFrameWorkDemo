//
//  RosterNewViewController.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  RosterNewViewController;
@protocol RosterNewViewControllerDelegate<NSObject>
-(void)cancelRosterNewViewController:(RosterNewViewController*)rosterNewViewController;
-(void)saveRosterNewViewController:(RosterNewViewController*)rosterNewViewController;
@end
@interface RosterNewViewController : UIViewController{
    
}
@property (nonatomic,retain) UITextField* nameText;
@property (nonatomic,retain) UITextField* jidText;
@property (nonatomic,assign) id<RosterNewViewControllerDelegate> delegate;
@end
