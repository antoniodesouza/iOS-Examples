//
//  MachineGameViewController.h
//  MachineGame
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MachineGameViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *buttonTwoMoved;
@property (strong, nonatomic) IBOutlet UIButton *buttonOneMoved;
@property (strong, nonatomic) IBOutlet UIButton *buttonThreeMove;
@property (strong, nonatomic) IBOutlet UIButton *buttonFiveMoved;

@property (strong, nonatomic) IBOutlet UIButton *buttonFourMoved;


- (IBAction)buttonOne:(id)sender;
- (IBAction)buttonTwo:(id)sender;
- (IBAction)buttonThree:(id)sender;
- (IBAction)buttonFour:(id)sender;
- (IBAction)buttonFive:(id)sender;



@end
