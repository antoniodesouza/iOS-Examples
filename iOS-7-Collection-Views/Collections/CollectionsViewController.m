//
//  CollectionsViewController.m
//  Collections
//
//  Created by fermin on 11/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import "CollectionsViewController.h"

@interface CollectionsViewController ()

@end

@implementation CollectionsViewController {
    NSMutableArray *array;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    array = [[NSMutableArray alloc]init];
    [array addObject:@"Apple"];
    [array addObject:@"Is"];
    [array addObject:@"The"];
    [array addObject:@"Bomb"];
    [array addObject:@"wopwop"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
    [array addObject:@":O"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Collections View Methods

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [array count];
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel * ) [cell viewWithTag:100];
    label.text = [array objectAtIndex:indexPath.row];
    
    [cell.layer setBorderWidth:2.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    [cell.layer setCornerRadius:50.0f];
    return cell;
    
}

@end
