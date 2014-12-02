//
//  ViewController.h
//  UICollectionViewTest
//
//  Created by fermin on 16/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *data;
@property (strong, nonatomic) IBOutlet UILabel *textPulsado;

@end
