//
//  MenuLateralAppDelegate.m
//  MenuLateral
//
//  Created by fermin on 15/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "MenuLateralAppDelegate.h"
#import <MFSideMenu/MFSideMenu.h>

@implementation MenuLateralAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];

    
    UINavigationController *navigationController = [storyboard instantiateViewControllerWithIdentifier:@"navigationController"];
    UIViewController *leftSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"leftSideMenuViewController"];
    UIViewController *rightSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"rightSideMenuViewController"];
    
    MFSideMenuContainerViewController *container = (MFSideMenuContainerViewController *)self.window.rootViewController;
    NSParameterAssert([container isKindOfClass:[MFSideMenuContainerViewController class]]);
    /*
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    MFSideMenuContainerViewController *container = tabBarController.viewControllers[0];
    */
    [container setLeftMenuViewController:leftSideMenuViewController];
    [container setRightMenuViewController:rightSideMenuViewController];
    [container setCenterViewController:navigationController];
    
    return YES;

}

@end
