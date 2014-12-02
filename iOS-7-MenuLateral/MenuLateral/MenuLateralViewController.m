//
//  MenuLateralViewController.m
//  MenuLateral
//
//  Created by fermin on 15/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "MenuLateralViewController.h"
#import <MFSideMenu/MFSideMenu.h>

@interface MenuLateralViewController ()

@end

@implementation MenuLateralViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {

    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
    
}

- (IBAction)showRightMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleRightSideMenuCompletion:nil];
    
}

@end
