//
//  HUDViewController.m
//  HUD
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "HUDViewController.h"
#import "Hud.h"

@interface HUDViewController ()
- (IBAction)buttonPressed:(id)sender;

@end

@implementation HUDViewController

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

- (IBAction)buttonPressed:(id)sender {
    
    Hud *hudView = [Hud hudInView:self.view];
    
    hudView.text = @"wopwop";
    
    
}
@end
