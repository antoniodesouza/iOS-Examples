//
//  ArchiveExampleViewController.m
//  UIAlertExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "ArchiveExampleViewController.h"

@interface ArchiveExampleViewController ()

@end

@implementation ArchiveExampleViewController

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

- (IBAction)showAlertPressed:(id)sender {
    [self showUIAlertWithMessage:@"You pressed a button" andTitle:@"Message"];
}

- (IBAction)showAlertTwoButtonsPressed:(id)sender {
    [self showUIAlertWithMessage:@"You pressed a another button" andTitle:@"Message" andButtonOne:@"one" andButtonTow:@"two"];
}

-(void) showUIAlertWithMessage: (NSString *) message andTitle:(NSString * ) title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                            message:message
                                            delegate:self
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil, nil];
    [alert show];
}

-(void) showUIAlertWithMessage: (NSString *) message andTitle:(NSString * ) title andButtonOne:(NSString *) buttonOne
                  andButtonTow:(NSString*) buttonTwo{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    [alert addButtonWithTitle:buttonOne];
    [alert addButtonWithTitle:buttonTwo];
    [alert show];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        _textLabel.text = @"Button: Ok";
    }else if (buttonIndex == 1){
        _textLabel.text = @"Button: 1";
    }else if(buttonIndex == 2){
        _textLabel.text = @"Button: 2 ";
    }
}

@end
