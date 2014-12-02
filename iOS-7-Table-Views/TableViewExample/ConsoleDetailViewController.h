//
//  ConsoleDetailViewController.h
//  TableViewExample
//
//  Created by fermin on 09/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsoleDetailViewController : UIViewController

@property (strong, nonatomic) NSArray *consoleDetailModel;

@property (strong, nonatomic) IBOutlet UILabel *consoleLabel;
@property (strong, nonatomic) IBOutlet UILabel *CompanyLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
