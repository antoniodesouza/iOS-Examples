//
//  MyCollectionViewCell.h
//  UICollectionViewTest
//
//  Created by fermin on 16/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UILabel *textLabel;

-(void)changeBackground;
@end
