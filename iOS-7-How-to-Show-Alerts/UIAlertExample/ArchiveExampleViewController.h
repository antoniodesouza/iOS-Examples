//
//  ArchiveExampleViewController.h
//  UIAlertExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArchiveExampleViewController : UIViewController <UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)showAlertPressed:(id)sender;
- (IBAction)showAlertTwoButtonsPressed:(id)sender;
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
@end
