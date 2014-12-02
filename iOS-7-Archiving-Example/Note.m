//
//  Note.m
//  ArchivingExample
//
//  Created by fermin on 24/10/14.
//  Copyright (c) 2014 marcadoresonline. All rights reserved.
//

#import "Note.h"

@implementation Note

@synthesize title;
@synthesize author;
@synthesize published;

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.title = [decoder decodeObjectForKey:@"title"];
        self.author = [decoder decodeObjectForKey:@"author"];
        self.published = [decoder decodeBoolForKey:@"published"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:title forKey:@"title"];
    [encoder encodeObject:author forKey:@"author"];
    [encoder encodeBool:published forKey:@"published"];
}


@end
