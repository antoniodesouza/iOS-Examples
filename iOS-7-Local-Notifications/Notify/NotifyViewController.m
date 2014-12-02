//
//  NotifyViewController.m
//  Notify
//
//  Created by fermin on 11/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "NotifyViewController.h"

@interface NotifyViewController ()

- (IBAction)buttonPressed:(id)sender;

@end

@implementation NotifyViewController

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
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    
    localNotification.alertBody = @"wopwop nexus";
    
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

}
@end
