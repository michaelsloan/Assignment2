//
//  Onion.m
//  Fruit
//
//  Created by Michael Sloan on 2/9/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "Onion.h"

@implementation Onion

- init{
    [self setName:@"Onion"];
    [self setShape:@"Round"];
    [self setColor:@"White"];
    return self;
}

- (NSString *)printSelf{
    return [[NSString alloc] initWithFormat:@"I am a %@ my color is %@ and my shape is %@", self.name, self.color, self.shape];
}

@end
