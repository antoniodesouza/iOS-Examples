//
//  CustomPickerViewController.m
//  CustomPicker
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "CustomPickerViewController.h"

@interface CustomPickerViewController ()

@property (strong, nonatomic) NSArray *array;

@end

@implementation CustomPickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSArray *data = [[NSArray alloc] initWithObjects:@"Apple", @"Samsung", @"HTC", @"LG", @"Google", @"Asus", @"Nokia", @"Sony", nil];
    self.array = data;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSString *select = [_array objectAtIndex:[_picker selectedRowInComponent:0]];
    NSString *title = [[NSString alloc] initWithFormat:@"You selected %@!", select];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"YAY!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

#pragma mark Picker DataSourceMethods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [_array count];
}

#pragma mark Picker Delegate Methods
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [_array objectAtIndex:row];
}

@end
