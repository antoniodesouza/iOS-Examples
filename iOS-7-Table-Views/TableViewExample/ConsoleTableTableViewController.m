 //
//  ConsoleTableTableViewController.m
//  TableViewExample
//
//  Created by fermin on 09/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "ConsoleTableTableViewController.h"
#import "ConsoleTableViewCell.h"
#import "ConsoleDetailViewController.h"

@interface ConsoleTableTableViewController ()

@end

@implementation ConsoleTableTableViewController

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
    
    //Pinta la tabla 20pixeles por debajo del top, puede ser muy util !!!
    [self.tableView setContentInset:UIEdgeInsetsMake(20, self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    
    _consoleCompanies = @[@"Microsoft", @"Sony", @"Nintendo", @"Steam"];
    _consoleNames = @[@"Xbox One", @"Play Station 4", @"Wii U", @"Steam machine"];
    _consoleImages = @[@"xboxOne.jpg", @"PS4.jpg", @"WiiU.jpg", @"steamMachine.jpg"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"showConsoleDetail"]){
        ConsoleDetailViewController *consoleDVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        long row = [myIndexPath row];
        consoleDVC.consoleDetailModel = @[_consoleNames[row], _consoleCompanies[row], _consoleImages[row]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _consoleNames.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"consoleTableCell";
    ConsoleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    long row = [indexPath row];
    cell.nameLabel.text = _consoleNames[row];
    cell.companyLabel.text = _consoleCompanies[row];
    cell.imageView.image = [UIImage imageNamed:_consoleImages[row]];
    
    return cell;
}
@end
