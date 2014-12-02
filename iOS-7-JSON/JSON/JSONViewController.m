//
//  JSONViewController.m
//  JSON
//
//  Created by fermin on 12/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "JSONViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface JSONViewController ()

@property (strong, nonatomic) NSDictionary *deportes;
@property (strong, nonatomic) NSMutableArray *post;

@property (strong, nonatomic) NSArray *deportesArrayFromNetworking;
@property (strong, nonatomic) NSArray *finishedDeportesArray;

@end

@implementation JSONViewController

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
    [self makeJSONRequests];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makeJSONRequests
{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://www.apuestasdeportivas.com/m/api/v1/deportes" parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             
             self.deportesArrayFromNetworking = (NSArray *) responseObject;
             NSLog(@"The Array: %@",self.deportesArrayFromNetworking);
             
             /*
             for (NSMutableArray *deporte in self.posts){
                 self.post = deporte;
                 NSLog(@"JSON: %@", self.post);
             }
              */
            [self.tableView reloadData];
             
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
    }];
    
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
    return [self.deportesArrayFromNetworking count];
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
 
    NSDictionary *tempDictionary= [self.deportesArrayFromNetworking objectAtIndex:indexPath.row];
    cell.textLabel.text = [tempDictionary objectForKey:@"name"];
    
    // Configure the cell...

    return cell;
}



@end
