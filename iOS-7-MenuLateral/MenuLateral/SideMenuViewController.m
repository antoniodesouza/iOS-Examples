//
//  SideMenuViewController.m
//  MenuLateral
//
//  Created by fermin on 15/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "SideMenuViewController.h"
#import <MFSideMenu/MFSideMenu.h>
#import "MenuLateralViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Section %d", section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 static NSString *CellIdentifier = @"Cell";
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
 cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
 }
 
 cell.textLabel.text = [NSString stringWithFormat:@"Item %d", indexPath.row];
 
 return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuLateralViewController *demoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuLateralViewController"];
    demoViewController.title = [NSString stringWithFormat:@"Demo #%d-%d", indexPath.section, indexPath.row];
    
    UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
    NSArray *controllers = [NSArray arrayWithObject:demoViewController];
    navigationController.viewControllers = controllers;
    
    [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
}


@end
