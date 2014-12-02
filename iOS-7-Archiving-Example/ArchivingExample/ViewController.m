//
//  ViewController.m
//  ArchivingExample
//
//  Created by fermin on 24/10/14.
//  Copyright (c) 2014 marcadoresonline. All rights reserved.
//

#import "ViewController.h"
#import "Note.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSData *notesData = [[NSUserDefaults standardUserDefaults] objectForKey:@"notes"];
    NSArray *notesSaved = [NSKeyedUnarchiver unarchiveObjectWithData:notesData];
    
    Note *n1 = [[Note alloc] init];
    n1.author = @"Fermin";
    n1.title = @"Wopwop";
    
    Note *n2 = [[Note alloc] init];
    n2.author = @"Fermin";
    n2.title = @"Wopwop";
    
    NSMutableArray *notes = [[NSMutableArray alloc] init];
    [notes addObject:n1];
    [notes addObject:n2];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:notes];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"notes"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
