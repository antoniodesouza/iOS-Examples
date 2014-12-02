//
//  StoryboardViewController.m
//  Storyboard
//
//  Created by fermin on 09/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "StoryboardViewController.h"

@interface StoryboardViewController ()

@end

@implementation StoryboardViewController

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

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *destinationVC = [segue destinationViewController];
    destinationVC.labelText = @"Vuelo con destino ... a tomar x culo";
}

- (IBAction)returned:(UIStoryboardSegue *) segue{
    _firstLabel.text = @"Vuelta a casaa ";
    
}

@end
