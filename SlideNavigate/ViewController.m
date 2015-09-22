//
//  ViewController.m
//  SlideNavigate
//
//  Created by 牛严 on 15/9/21.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "ViewController.h"
#import "MainContainerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [button addTarget:self action:@selector(slideNavigate:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)slideNavigate:(id)sender {
    MainContainerViewController *vc = [[MainContainerViewController alloc]initWithNibName:@"MainContainerViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
