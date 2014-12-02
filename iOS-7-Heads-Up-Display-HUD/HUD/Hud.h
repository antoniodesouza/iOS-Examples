//
//  Hud.h
//  HUD
//
//  Created by fermin on 10/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hud : UIView
@property (strong, nonatomic) NSString * text;

+ (Hud *)hudInView:(UIView *) view;

@end
