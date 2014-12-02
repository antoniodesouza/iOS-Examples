//
//  ViewController.m
//  celdascambiadetam
//
//  Created by fermin on 14/11/14.
//  Copyright (c) 2014 marcadoresonline. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (assign, nonatomic) BOOL celdaAbierta;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _celdaAbierta = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Tableview Datasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath*)indexPath
{
    if ([indexPath isEqual:_expandIndexPath] && _celdaAbierta){
        return 180;
    }
    
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * CellIdentifier = @"Celda";
    CeldaTableViewCell *cell = [[CeldaTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    NSString *texto =  [NSString stringWithFormat:@"Celda %ld", (long)[indexPath row] +1];
    cell.labelTextoCelda.text = texto;

    return cell;
}

#pragma mark -
#pragma mark Tableview Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *modifiedRows = [NSMutableArray array];
    // Deselect cell
    [tableView deselectRowAtIndexPath:indexPath animated:TRUE];
    _expandIndexPath = indexPath;
    _celdaAbierta = !_celdaAbierta;
    [modifiedRows addObject:indexPath];
    
    // This will animate updating the row sizes
    [tableView reloadRowsAtIndexPaths:modifiedRows withRowAnimation:UITableViewRowAnimationAutomatic];
}

@end
