//
//  FTMainTabViewController.m
//  FreeTalk
//
//  Created by 罗显成 on 2016/11/29.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import "FTMainTabViewController.h"
#import "FTMainNavViewController.h"
#import "FTChatViewController.h"
#import "FTCircleViewController.h"
#import "FTMeViewController.h"

@interface FTMainTabViewController ()

@end

@implementation FTMainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addAllChildVCs];
}

//add all child ViewControllers
- (void)addAllChildVCs {
    FTChatViewController *chatVC = [[FTChatViewController alloc]init];
    [self initOneChildVC:chatVC image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""] title:@"消息"];
    
    FTCircleViewController *circleVC = [[FTCircleViewController alloc]init];
    [self initOneChildVC:circleVC image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""] title:@"朋友圈"];
    
    FTMeViewController *meVC = [[FTMeViewController alloc]init];
    [self initOneChildVC:meVC image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""] title:@"我"];
}

- (void)initOneChildVC:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title {
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    
    FTMainNavViewController *nav = [[FTMainNavViewController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
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
