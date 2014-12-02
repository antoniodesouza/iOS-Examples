//
//  iAdViewController.m
//  iAd
//
//  Created by fermin on 11/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "iAdViewController.h"

@interface iAdViewController ()

@end

@implementation iAdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark iAd Delegate Methods

-(void) bannerViewDidLoadAd:(ADBannerView *)banner{ //mostrar el banner
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:1];
     
    [UIView commitAnimations];
     
}

-(void) bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{ //si falla la carga hacemos un fade del banner
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:0];
    
    [UIView commitAnimations];

}

@end
