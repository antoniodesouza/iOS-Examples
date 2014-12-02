//
//  PopExampleViewController.m
//  PopExample
//
//  Created by fermin on 12/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "PopExampleViewController.h"
#import <pop/POP.h>
@interface PopExampleViewController ()

@property (nonatomic) BOOL buttonToggle;
@end

@implementation PopExampleViewController

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

- (IBAction)popAnimations:(UIButton *)sender
{
    //Hace un pequeño slide a la derecha
    /*
    POPDecayAnimation *anim = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    anim.velocity = @(1000.);
    [sender.layer pop_addAnimation:anim forKey:@"slide"];
     */
    
    //blinkea toda la pantalla
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(0.0);
    anim.toValue = @(1.0);
    [self.view pop_addAnimation:anim forKey:@"fade"];
    
}

- (IBAction)liveButton:(UIButton *)sender {
    self.buttonToggle = !self.buttonToggle;

    CALayer *layer = sender.layer;
    
    //First let's remove any existing animations
    [layer pop_removeAllAnimations];
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerSize];
    POPSpringAnimation *rotation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
    
    if(self.buttonToggle)
    {
        anim.toValue = [NSValue valueWithCGSize:CGSizeMake(125, 70)];
        rotation.toValue = @(M_PI_4);
    }
    else
    {
        anim.toValue = [NSValue valueWithCGSize:CGSizeMake(265, 149)];
        rotation.toValue = @(0);
    }
    
    anim.springBounciness = 20;
    anim.springSpeed = 16;
    
    anim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        NSLog(@"Working");
    };
    
    [layer pop_addAnimation:anim forKey:@"size"];
    [layer pop_addAnimation:rotation forKey:@"rotation"];
    
}

@end
