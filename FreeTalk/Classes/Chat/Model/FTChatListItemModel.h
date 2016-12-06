//
//  FTChatListItemModel.h
//  FreeTalk
//
//  Created by 罗显成 on 2016/12/5.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTChatListItemModel : NSObject
@property (nonatomic, copy)NSString *portraitUrl;
@property (nonatomic, copy)NSString *nickName;
@property (nonatomic, copy)NSString *lastMsgTime;
@property (nonatomic, copy)NSString *lastMsgText;
@end
