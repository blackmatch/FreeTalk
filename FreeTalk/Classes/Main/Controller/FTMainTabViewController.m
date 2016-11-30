//
//  FTMainTabViewController.m
//  FreeTalk
//
//  Created by 罗显成 on 2016/11/29.
//  Copyright © 2016年 blackmatch. All rights reserved.
//

#import "FTMainTabViewController.h"
@import CocoaAsyncSocket;

@interface FTMainTabViewController ()

@end

@implementation FTMainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    GCDAsyncSocket * socket = [[GCDAsyncSocket alloc]initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
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
