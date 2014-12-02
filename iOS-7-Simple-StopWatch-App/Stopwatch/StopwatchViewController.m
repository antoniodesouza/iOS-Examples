//
//  StopwatchViewController.m
//  Stopwatch
//
//  Created by fermin on 11/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "StopwatchViewController.h"

@interface StopwatchViewController ()

@property (strong, nonatomic) IBOutlet UILabel *display;

- (IBAction)buttonPressed:(id)sender;

@end

@implementation StopwatchViewController{
    bool start;
    
    NSTimeInterval time;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.display.text = @"0:00";
    start = false;
    
}

-(void)update {
    if(start == false) {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = currentTime - time;
    
    int minutes = (int) (elapsedTime / 60);
    int seconds = (int) (elapsedTime = elapsedTime - (minutes * 60));
    
    self.display.text = [NSString stringWithFormat:@"%u:%02u", minutes, seconds];
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    if (start == false){
        start = true;
        time = [NSDate timeIntervalSinceReferenceDate];
        
        [sender setTitle:@"Stop!" forState:UIControlStateNormal];
        [self update];
    }else{
        start = false;
        [sender setTitle:@"Start" forState:UIControlStateNormal];

    }
}

@end
