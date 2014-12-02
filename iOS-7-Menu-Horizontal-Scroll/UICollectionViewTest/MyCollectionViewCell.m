//
//  MyCollectionViewCell.m
//  UICollectionViewTest
//
//  Created by fermin on 16/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) changeBackground
{
    self.backgroundColor = [UIColor greenColor];
    self.layer.backgroundColor = [UIColor greenColor].CGColor;
}

@end
