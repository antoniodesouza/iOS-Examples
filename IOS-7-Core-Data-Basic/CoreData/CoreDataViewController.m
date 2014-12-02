//
//  CoreDataViewController.m
//  CoreData
//
//  Created by fermin on 12/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "CoreDataViewController.h"
#import "CoreDataAppDelegate.h"

@interface CoreDataViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *name;
@property (strong, nonatomic) NSMutableArray *phone;

@end

@implementation CoreDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.name = [[NSMutableArray alloc] init];
    self.phone = [[NSMutableArray alloc] init];
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Contact" inManagedObjectContext:context];
    NSFetchRequest *request =[[NSFetchRequest alloc] init];
    
    [request setEntity:entityDesc];
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"(name = %@)", @"Wop wop wop"];
    [request setPredicate:pred];
    NSManagedObject *matches = nil;
    
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request error:&error];
    
    if ([objects count] == 0){
        NSLog(@"No matches");
    }
    else
    {
        for (int i = 0; i < [objects count]; i++) {
            matches = objects[i];
            [self.name addObject:[matches valueForKey:@"name"]];
            [self.phone addObject:[matches valueForKey:@"phone"]];
        }
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)add:(id)sender {
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSManagedObject *newContact;
    newContact = [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    [newContact setValue:@"Wop wop wop" forKey:@"name"];
    [self.name addObject:@"Wop wop wop"];
    
    [newContact setValue:@"(666) 666 - 6666" forKey:@"phone"];
    [self.phone addObject:@"(666) 666 - 6666"];
    
    NSError *error;
    [context save:&error];
    [self.tableView reloadData];
    
}

#pragma Table View
-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    return self.name.count;
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [self.name objectAtIndex:indexPath.row];
    return cell;
    
}

@end
