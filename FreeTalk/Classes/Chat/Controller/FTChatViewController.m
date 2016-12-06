//
//  FTChatViewController.m
//  FreeTalk
//
//  Created by 罗显成 on 2016/11/29.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import "FTChatViewController.h"
#import "FTChatListCell.h"
#import "FTChatListItemModel.h"
#import <UITableView+FDTemplateLayoutCell.h>

@interface FTChatViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)UITableView *chatListTableView;
@property (nonatomic, strong)NSMutableArray *chatListModels;
@end

@implementation FTChatViewController

- (NSMutableArray *)chatListModels {
    if (!_chatListModels) {
        _chatListModels = [NSMutableArray array];
    }
    
    return _chatListModels;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadUI];
    [self loadTestData];
}

- (void)loadUI {
    UITableView *chatListTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    self.chatListTableView = chatListTableView;
    chatListTableView.dataSource = self;
    chatListTableView.delegate = self;
    UIView *baseView = self.view;
    [baseView addSubview:chatListTableView];
    __typeof(self)weakSelf = self;
    [chatListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_topLayoutGuide).offset(0);
        make.left.equalTo(baseView.mas_left).offset(0);
        make.bottom.equalTo(baseView.mas_bottom).offset(0);
        make.right.equalTo(baseView.mas_right).offset(0);
    }];
}

- (void)loadTestData {
    for (NSInteger i=0; i < 20; i++) {
        FTChatListItemModel *itemModel = [[FTChatListItemModel alloc]init];
        itemModel.portraitUrl = @"http://img5.duitang.com/uploads/item/201504/17/20150417H5529_JuTGY.thumb.224_0.jpeg";
        itemModel.nickName = [NSString stringWithFormat:@"test%u", arc4random()%10000];
        itemModel.lastMsgTime = @"21:34";
        itemModel.lastMsgText = [NSString stringWithFormat:@"随机数%u", arc4random()%10000];
        [self.chatListModels addObject:itemModel];
    }
    
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chatListModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString static *chatListCellIdentifier = @"ChatListCell";
    FTChatListCell *cell = [tableView dequeueReusableCellWithIdentifier:chatListCellIdentifier];
    
    if (!cell) {
        cell = [[FTChatListCell alloc]init];
    }
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return [tableView fd_heightForCellWithIdentifier:@"" configuration:^(id cell) {
//        FTChatListItemModel *model = [self.chatListModels objectAtIndex:indexPath.row];
//        FTChatListCell *chatListCell = (FTChatListCell *)cell;
//        [chatListCell updateViewWithModel:model];
//    }];
//}

#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    FTChatListItemModel *model = [self.chatListModels objectAtIndex:indexPath.row];
    FTChatListCell *chatListCell = (FTChatListCell *)cell;
    [chatListCell updateViewWithModel:model];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
