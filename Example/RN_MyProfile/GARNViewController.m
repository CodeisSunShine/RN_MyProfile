//
//  GARNViewController.m
//  RN_MyProfile
//
//  Created by 192.168.0.222 on 11/05/2019.
//  Copyright (c) 2019 192.168.0.222. All rights reserved.
//

#import "GARNViewController.h"
#import "RN_MyProfile-Prefix.pch"
#import "BJSRNRootViewTool.h"

@interface GARNViewController ()

@end

@implementation GARNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *flatListView = [BJSRNRootViewTool getRCTRootViewWithBundleRoot:@"index.ios.jsbundle" ModuleName:@"MyInfoVC" initialProperties:nil];
    [self.view addSubview:flatListView];
    flatListView.frame = CGRectMake(0, 0, 375, 700);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
