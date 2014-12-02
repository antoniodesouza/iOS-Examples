//
//  PopCustomSegue.m
//  PopExample
//
//  Created by fermin on 12/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "PopCustomSegue.h"
#import <Pop/Pop.h>

@implementation PopCustomSegue

-(void) perform
{
    UIViewController *sourceViewController = (UIViewController *) [self sourceViewController];
    UIViewController *destinationController = (UIViewController *) [self destinationViewController];
    
    CALayer *layer = destinationController.view.layer;
    [layer pop_removeAllAnimations];
    
    POPSpringAnimation *xAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    POPSpringAnimation *sizeAnim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerSize];
    
    xAnim.fromValue = @(320);
    xAnim.springBounciness = 16;
    xAnim.springSpeed = 10;
    
    sizeAnim.fromValue = [NSValue valueWithCGSize:CGSizeMake(64, 114)];
    
    xAnim.completionBlock = ^(POPAnimation *anim, BOOL finished){
        NSLog(@"Working");
    };
    
    [layer pop_addAnimation:xAnim forKey:@"position"];
    [layer pop_addAnimation:sizeAnim forKey:@"size"];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
}
@end
