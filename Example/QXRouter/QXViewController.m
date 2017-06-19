//
//  QXViewController.m
//  QXRouter
//
//  Created by mengqingxiang on 06/15/2017.
//  Copyright (c) 2017 mengqingxiang. All rights reserved.
//

#import "QXViewController.h"
#import "QXRouter.h"
@interface QXViewController ()

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [QXRouter shareInstance].rootNav = self.navigationController;
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[QXRouter shareInstance] pushViewController:@"test" params:@{@"order_id":@"sdfs"} nav:self.navigationController];
}

@end
