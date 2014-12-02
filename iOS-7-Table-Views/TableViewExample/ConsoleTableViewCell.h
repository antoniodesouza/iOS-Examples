//
//  ConsoleTableViewCell.h
//  TableViewExample
//
//  Created by fermin on 09/09/14.
//  Copyright (c) 2014 Fermin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsoleTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *companyLabel;
@property (strong, nonatomic) IBOutlet UIImageView *consoleImage;

@end
