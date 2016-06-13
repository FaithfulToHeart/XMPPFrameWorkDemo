//
//  RootLoginViewController.m
//  XMPPFrameWorkDemo
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "RootLoginViewController.h"
#import "DRRRRoster.h"
#import "DRRRMessage.h"
#import "DRRRManager.h"
#import "DRRRChatRoomManager.h"
#import "CellCommand.h"
#import "XmlViewController.h"

@interface RootLoginViewController ()
@end

@implementation RootLoginViewController

-(id)init{
    self=[super init];
    if (self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationUpdateRoster:) name:DRRRRosterUpdateNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationRefreshTalks:) name:DRRRRefreshTalksNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onlineNotification:) name:DRRRManager_Online_Notification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationRefreshRooms:) name:DRRRChatRoomRefreshRoomsNotification object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor darkGrayColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notification
-(void)notificationUpdateRoster:(NSNotification*)notification{
    DRRRRosterMember* member=notification.object;
    NSLog(@"%@",member);
}
-(void)notificationRefreshTalks:(NSNotification*)notification{
    NSString* talkid=notification.userInfo[DRRRRefreshTalksNotification_UserInfo_TalkId];
    NSString* new_message=notification.userInfo[DRRRRefreshTalksNotification_UserInfo_NewMessage];
    NSLog(@"talkid:%@",talkid);
    NSLog(@"new message:%@",new_message);
}
-(void)onlineNotification:(NSNotification*)notification{
    BOOL signin=[notification.object boolValue];
    NSLog(@"signin:%d",signin);
}
-(void)notificationRefreshRooms:(NSNotification*)notification{
    NSLog(@"%@",[DRRRChatRoomManager sharedChatRoomManager].chatRooms);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
