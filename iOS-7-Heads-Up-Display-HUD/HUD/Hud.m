//
//  Hud.m
//  HUD
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "Hud.h"

@implementation Hud

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (Hud *)hudInView:(UIView *) view{
    Hud *hudView =[[Hud alloc] initWithFrame:view.bounds];
    hudView.opaque = NO;
    
    [view addSubview:hudView];
    
    view.userInteractionEnabled = NO;
    
    [hudView showAnimated];
    
    return hudView;
}

-(void) drawRect:(CGRect)rect{
    const CGFloat boxWidth = 96.0f; //tamaño de la caja
    const CGFloat boxHeight = 96.0f;
    
    CGRect boxRect = CGRectMake(roundf(self.bounds.size.width - boxWidth) / 2.0f, roundf(self.bounds.size.height - boxHeight) / 2.0f, boxWidth, boxHeight); //posicion de la caja
    //boxRect = CGRectMake(10, 10, boxWidth, boxHeight);
    
    UIBezierPath *roundRect = [UIBezierPath bezierPathWithRoundedRect:boxRect cornerRadius:10.0f];
    
    [[UIColor colorWithWhite:0.0f alpha:0.75f] setFill];
    
    [roundRect fill];
    
    [[UIColor whiteColor] set];
    
    UIFont *font = [UIFont boldSystemFontOfSize:16.0f];
 
    CGSize textSize = [self.text sizeWithFont:font];
    
    CGPoint textPoint = CGPointMake(self.center.x - roundf(textSize.width / 2.0f), self.center.y - roundf(textSize.height / 2.0f) + boxHeight / 4.0f);

    [self.text drawAtPoint:textPoint withFont:font];
    
    
    
}

-(void) showAnimated{
    
    self.alpha = 0.0f;
    
    self.transform = CGAffineTransformMakeScale(1.3f, 1.3f);
    
    [UIView beginAnimations:nil context:NULL];
    
    [UIView setAnimationDuration:0.3];
    
    self.alpha = 1.0f;
    
    self.transform = CGAffineTransformIdentity;
    
    [UIView commitAnimations];
}


@end
