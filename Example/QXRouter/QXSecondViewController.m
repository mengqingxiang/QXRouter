//
//  QXSecondViewController.m
//  QXRouter
//
//  Created by 孟庆祥 on 2017/6/19.
//  Copyright © 2017年 mengqingxiang. All rights reserved.
//

#import "QXSecondViewController.h"
#import "QXRouter.h"
#import "QXAppDelegate.h"
@interface QXSecondViewController ()

@end

@implementation QXSecondViewController


+(void)load
{
//    [[QXRouter shareInstance]registerViewController:[self class] name:@"test" requireParams:@[@"order_id"] optionalParams:nil handler:^(NSDictionary *dict, UIViewController *viewController) {
//        NSLog(@"%@-----%@",dict,viewController);
//        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:viewController animated:YES completion:nil];
//    }];
    
    [[QXRouter shareInstance]registerViewController:[self class] name:@"test" requireParams:@[@"order_id"] optionalParams:nil handler:nil];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:btn];
    [btn setTitle:@"dismiss" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(dissmiss) forControlEvents:UIControlEventTouchUpInside];
    btn.center = self.view.center;
}

-(void)dissmiss{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
