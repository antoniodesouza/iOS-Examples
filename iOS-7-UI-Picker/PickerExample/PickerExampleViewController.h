//
//  PickerExampleViewController.h
//  PickerExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerExampleViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) NSArray *units;
@property (strong, nonatomic) NSArray *conversionFactor;
@property (strong, nonatomic) IBOutlet UITextField *metersText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;

- (IBAction)textFieldReturn:(id)sender;
@end
