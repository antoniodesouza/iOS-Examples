//
//  ArchiveExampleViewController.h
//  ArchiveExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArchiveExampleViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *address;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) NSString *dataFilePath;

- (IBAction)saveInfo:(id)sender;

@end
