//
//  MenubarViewController.m
//  Menubar
//
//  Created by fermin on 15/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "MenubarViewController.h"

@interface MenubarViewController ()

@property (strong, nonatomic) IBOutlet UILabel *texto;

@end

@implementation MenubarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toolbarMenu:(id)sender {

    [self.texto setText:@"menu"];
    
    UIBarButtonItem *barButtonAppearance = (UIBarButtonItem*) sender;
    //barButtonAppearance setBarTintColor
    [barButtonAppearance setTintColor:[UIColor colorWithRed:(168/255.0) green:(1/255.0) blue:(1/255.0) alpha:1]];
}

- (IBAction)toolbarHoy:(id)sender {

    [self.texto setText:@"hoy"];

}

- (IBAction)toolbarFutbol:(id)sender {

    [self.texto setText:@"futbol"];

}

- (IBAction)toolbarBasket:(id)sender {

    [self.texto setText:@"basket"];

}

- (IBAction)toolbarTenis:(id)sender {

    [self.texto setText:@"tenis"];

}

@end
