//
//  ConsoleDetailViewController.m
//  TableViewExample
//
//  Created by fermin on 09/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "ConsoleDetailViewController.h"

@interface ConsoleDetailViewController ()

@end

@implementation ConsoleDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _consoleLabel.text = _consoleDetailModel[0];
    _CompanyLabel.text = _consoleDetailModel[1];
    _imageView.image = [UIImage imageNamed:_consoleDetailModel[2]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
