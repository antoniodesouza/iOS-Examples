//
//  Note.h
//  ArchivingExample
//
//  Created by fermin on 24/10/14.
//  Copyright (c) 2014 marcadoresonline. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject <NSCoding>
{
    NSString * title;
    NSString * author;
    BOOL published;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *author;
@property (nonatomic) BOOL published;

@end
