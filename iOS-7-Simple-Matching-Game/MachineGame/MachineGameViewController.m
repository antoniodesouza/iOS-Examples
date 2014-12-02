//
//  MachineGameViewController.m
//  MachineGame
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "MachineGameViewController.h"

@interface MachineGameViewController ()

@end

@implementation MachineGameViewController

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

- (IBAction)buttonOne:(id)sender {
    CGRect frame = _buttonOneMoved.frame;
    
    frame.origin.x = 69;
    frame.origin.y = 58;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _buttonOneMoved.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)buttonTwo:(id)sender {
    CGRect frame = _buttonTwoMoved.frame;
    
    frame.origin.x = 107;
    frame.origin.y = 58;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _buttonTwoMoved.frame = frame;
    
    [UIView commitAnimations];

}

- (IBAction)buttonThree:(id)sender {
    CGRect frame = _buttonThreeMove.frame;
    
    frame.origin.x = 145;
    frame.origin.y = 58;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _buttonThreeMove.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)buttonFour:(id)sender {
    CGRect frame = _buttonFourMoved.frame;
    
    frame.origin.x = 183;
    frame.origin.y = 58;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _buttonFourMoved.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)buttonFive:(id)sender {
    CGRect frame = _buttonFiveMoved.frame;
    
    frame.origin.x = 221;
    frame.origin.y = 58;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _buttonFiveMoved.frame = frame;
    
    [UIView commitAnimations];
}
@end
