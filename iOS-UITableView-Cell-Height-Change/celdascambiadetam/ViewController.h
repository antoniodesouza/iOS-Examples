//
//  ViewController.h
//  celdascambiadetam
//
//  Created by fermin on 14/11/14.
//  Copyright (c) 2014 marcadoresonline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>


@property (nonatomic) NSIndexPath *expandIndexPath;

@end

