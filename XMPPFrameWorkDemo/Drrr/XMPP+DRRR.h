//
//  XMPP+DRRR.h
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "XMPPPresence.h"
#import "XMPPIQ.h"
#import "XMPPMessage.h"

@interface XMPPPresence (DRRR)
///是否来自聊天室的状态
-(BOOL)isChatRoomPresence;
@end

@interface XMPPIQ(DRRR)
///是否是获取联系人的请求
-(BOOL)isRosterQuery;
///是否是房间列表请求
-(BOOL)isChatRoomItems;
///是否是房间信息查询
-(BOOL)isChatRoomInfo;
@end

@interface XMPPMessage(DRRR)
///是否是来自房间邀请
-(BOOL)isChatRoomInvite;
@end
