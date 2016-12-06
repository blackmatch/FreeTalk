//
//  FTChatListCell.m
//  FreeTalk
//
//  Created by 罗显成 on 2016/12/5.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import "FTChatListCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation FTChatListCell {
    UIImageView *_portraitImgView;
    UILabel *_nickNameLabel;
    UILabel *_timeLabel;
    UILabel *_msgLabel;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//override init method
- (instancetype)init {
    self = [super init];
    if (self) {
        UIView *baseView = self.contentView;
        //portrait image view
        _portraitImgView = [[UIImageView alloc]init];
        [baseView addSubview:_portraitImgView];
        [_portraitImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(baseView.mas_top).offset(10);
            make.left.equalTo(baseView.mas_left).offset(10);
            make.width.mas_equalTo(30);
            make.height.equalTo(_portraitImgView.mas_width);
            make.bottom.equalTo(baseView.mas_bottom).offset(-10);
        }];
        
        //nickname label
        _nickNameLabel = [[UILabel alloc]init];
        [baseView addSubview:_nickNameLabel];
        [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_portraitImgView.mas_top).offset(0);
            make.left.equalTo(_portraitImgView.mas_right).offset(10);
        }];
        
        //time label
        _timeLabel = [[UILabel alloc]init];
        [baseView addSubview:_timeLabel];
        [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_nickNameLabel.mas_top).offset(0);
            make.right.equalTo(baseView.mas_right).offset(-10);
        }];
        
        //msg label
        _msgLabel = [[UILabel alloc]init];
        _msgLabel.numberOfLines = 1;
        [baseView addSubview:_msgLabel];
        [_msgLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(_nickNameLabel.mas_leading).offset(0);
            make.top.equalTo(_nickNameLabel.mas_bottom).offset(10);
            make.right.lessThanOrEqualTo(baseView.mas_right).offset(-20);
        }];
    }
    
    return self;
}

- (void)updateViewWithModel:(FTChatListItemModel *)model {
    NSLog(@"%@", _portraitImgView);
    NSString *pUrl = model.portraitUrl ? model.portraitUrl : @"";
    [_portraitImgView sd_setImageWithURL:[NSURL URLWithString:pUrl] placeholderImage:[UIImage imageNamed:@""] options:SDWebImageRefreshCached];
    _nickNameLabel.text = model.nickName ? model.nickName : @"";
    _timeLabel.text = model.lastMsgTime ? model.lastMsgTime : @"";
    _msgLabel.text = model.lastMsgText ? model.lastMsgText : @"";
}

@end
