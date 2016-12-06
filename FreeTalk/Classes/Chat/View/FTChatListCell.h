//
//  FTChatListCell.h
//  FreeTalk
//
//  Created by 罗显成 on 2016/12/5.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FTChatListItemModel.h"

@interface FTChatListCell : UITableViewCell
- (void)updateViewWithModel:(FTChatListItemModel *)model;
@end
