//
//  XMPPPresence+DRRR.m
//  Test-XMPP
//
//  Created by 李志康 on 16/6/12.
//  Copyright © 2016年 忠于内心. All rights reserved.
//

#import "XMPP+DRRR.h"
#import "xmpp.h"
@implementation XMPPPresence (DRRR)
-(BOOL)isChatRoomPresence{
    if (self.childCount>0){
        for (NSXMLElement* element in self.children) {
            if ([element.name isEqualToString:@"x"] &&
                [element.xmlns isEqualToString:@"http://jabber.org/protocol/muc#user"])
                return YES;
        }
    }
    return NO;
}
@end
@implementation XMPPIQ (DRRR)

-(BOOL)isRosterQuery{
    if (self.childCount>0){
        for (NSXMLElement* element in self.children) {
            if ([element.name isEqualToString:@"query"] && [element.xmlns isEqualToString:@"jabber:iq:roster"]){
                return YES;
            }
        }
    }
    return NO;
}
-(BOOL)isChatRoomItems{
    if (self.childCount>0){
        for (NSXMLElement* element in self.children) {
            if ([element.name isEqualToString:@"query"] &&
                [element.xmlns isEqualToString:@"http://jabber.org/protocol/disco#items"]){
                return YES;
            }
        }
    }
    return NO;
}
-(BOOL)isChatRoomInfo{
    if (self.childCount>0){
        for (NSXMLElement* element in self.children) {
            if ([element.name isEqualToString:@"query"] &&
                [element.xmlns isEqualToString:@"http://jabber.org/protocol/disco#info"]){
                BOOL has_identity=NO;
                BOOL has_feature=NO;
                for (NSXMLElement* element_item in element.children) {
                    if ([element_item.name isEqualToString:@"identity"]){
                        has_identity=YES;
                    }
                    if ([element_item.name isEqualToString:@"feature"]){
                        has_feature=YES;
                    }
                }
                return has_identity && has_feature;
            }
        }
    }
    return NO;
}
@end
@implementation XMPPMessage (DRRR)

-(BOOL)isChatRoomInvite{
    if (self.childCount>0){
        for (NSXMLElement* element in self.children) {
            if ([element.name isEqualToString:@"x"] && [element.xmlns isEqualToString:@"http://jabber.org/protocol/muc#user"]){
                for (NSXMLElement* element_a in element.children) {
                    if ([element_a.name isEqualToString:@"invite"]){
                        return YES;
                    }
                }
            }
        }
    }
    return NO;
}

@end
