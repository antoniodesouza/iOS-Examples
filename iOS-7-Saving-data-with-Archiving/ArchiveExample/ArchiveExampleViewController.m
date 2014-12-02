//
//  ArchiveExampleViewController.m
//  ArchiveExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "ArchiveExampleViewController.h"

@interface ArchiveExampleViewController ()

@end

@implementation ArchiveExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSFileManager *filemgr;
    NSString *docDir;
    NSArray *dirPath;
    
    filemgr = [NSFileManager defaultManager];
    dirPath = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    docDir = dirPath[0];
    
    _dataFilePath = [[NSString alloc] initWithString:[docDir stringByAppendingPathComponent:@"userdata.archive"]];
    
    if([filemgr fileExistsAtPath:_dataFilePath]){
        NSMutableArray *dataArray;
        dataArray = [NSKeyedUnarchiver unarchiveObjectWithFile:_dataFilePath];
        
        _name.text = dataArray[0];
        _address.text = dataArray[1];
        _phone.text = dataArray[2];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveInfo:(id)sender {
    NSMutableArray *userArray;
    userArray = [[NSMutableArray alloc] init];
    
    [userArray addObject:_name.text];
    [userArray addObject:_address.text];
    [userArray addObject:_phone.text];
    [NSKeyedArchiver archiveRootObject:userArray toFile:_dataFilePath];
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [[event allTouches] anyObject];
    if([_phone isFirstResponder] && [touch view] != _phone){
        [_phone resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
