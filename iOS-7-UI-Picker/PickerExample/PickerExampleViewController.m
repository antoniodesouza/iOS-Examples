//
//  PickerExampleViewController.m
//  PickerExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "PickerExampleViewController.h"

@interface PickerExampleViewController ()

@end

@implementation PickerExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _units = @[@"Feet(ft)", @"Kilometres (km)", @"Miles mi)", @"Yards (yd)"];
    _conversionFactor = @[@3.28f, @0.001, @0.000621, @1.093];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
    [self convert];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _units.count;
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _units[row];
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    float rate = [_conversionFactor[row] floatValue];
    float meters = [_metersText.text floatValue];
    float result = rate * meters;
    
    NSString *resultString = [[NSString alloc] initWithFormat:@"%.2f meters = %.2f %@", meters, result, _units[row]];
    _resultLabel.text = resultString;
}


-(void) convert{ //si no se ha seleccionado nada en el picker
    float rate = [_conversionFactor[0] floatValue];
    float meters = [_metersText.text floatValue];
    float result = rate * meters;
    
    NSString *resultString = [[NSString alloc] initWithFormat:@"%.2f meters = %.2f %@", meters, result, _units[0]];
    _resultLabel.text = resultString;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [[event allTouches] anyObject];
    if([_metersText isFirstResponder] && [touch view] != _metersText){
        [_metersText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}


@end
