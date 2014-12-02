//
//  PassingViewController.m
//  Passing
//
//  Created by fermin on 11/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "PassingViewController.h"
#import "NewViewController.h"

@interface PassingViewController ()
- (IBAction)chooseImage:(id)sender;

@end

@implementation PassingViewController {
    
    UIImage *newImage;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chooseImage:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

    [self presentViewController:picker animated:YES completion:nil];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"NewViewController"]){
        
        NewViewController *destViewController = segue.destinationViewController;
        destViewController.theNewImage = newImage;
    }
}

#pragma mark ImagePicker Delegate
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
    newImage = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:nil];
}



@end
