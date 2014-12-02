//
//  MasterDetailExampleMasterViewController.h
//  MasterDetailExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterDetailExampleDetailViewController;

@interface MasterDetailExampleMasterViewController : UITableViewController
@property (nonatomic, retain) NSArray *engineNames;
@property (nonatomic, retain) NSArray *engineAdresses;

@property (strong, nonatomic) MasterDetailExampleDetailViewController *detailViewController;

@end
