//
//  FileExampleViewController.m
//  FileExample
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "FileExampleViewController.h"

@interface FileExampleViewController ()

@end

@implementation FileExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	NSFileManager *fileManager;
    NSString *dataFile;
    NSString *directory;
    NSArray *paths;
    
    fileManager = [NSFileManager defaultManager];
    
    //Identify the document directory
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    directory = paths[0];
    
    //Build the path to the data file
    dataFile = [directory stringByAppendingPathComponent:@"datafile.dat"];
    
    //check if file already exists
    if([fileManager fileExistsAtPath:dataFile]){
        //Read file content and display text
        NSData *dataBuffer;
        dataBuffer = [fileManager contentsAtPath:dataFile];
        NSString *dataString = [[NSString alloc] initWithData:dataBuffer encoding:NSASCIIStringEncoding];
        _textField.text = dataString;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveText:(id)sender {
    
    NSFileManager *fileManager;
    NSData *dataBuffer;
    NSString *dataFile;
    NSString *directory;
    NSArray *paths;
    
    fileManager =  [NSFileManager defaultManager];
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    directory = paths[0];
    
    dataFile = [directory stringByAppendingPathComponent:@"datafile.dat"];
    dataBuffer = [_textField.text dataUsingEncoding:NSASCIIStringEncoding];
    
    [fileManager createFileAtPath:dataFile contents:dataBuffer attributes:nil];
}

@end
