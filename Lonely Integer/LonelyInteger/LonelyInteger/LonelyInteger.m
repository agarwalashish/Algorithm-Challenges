//
//  LonelyInteger.m
//  LonelyInteger
//
//  Created by Ashish Agarwal on 2014-03-12.
//  Copyright (c) 2014 Ashish Agarwal. All rights reserved.
//

#import "LonelyInteger.h"

@implementation LonelyInteger
{
    NSArray *arrayOfNumbers;
}

-(id) initWithArray : (NSArray *) array {
    
    self = [super init];
    if (self) {
        arrayOfNumbers = array;
    }
    
    return self;
}

-(NSInteger) singleInteger {
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    for (int i =0; i<[arrayOfNumbers count]; i++) {
        NSString *string = [arrayOfNumbers objectAtIndex:i];
        if ([dictionary objectForKey:string] == nil) {
            [dictionary setValue:[NSNumber numberWithInt:1] forKey:string];
        }
        else {
            [dictionary setObject:[NSNumber numberWithInt:2] forKey:string];
        }
    }
    
    for (int i = 0; i < [arrayOfNumbers count]; i++) {
        NSNumber *occurences = [dictionary valueForKey:[arrayOfNumbers objectAtIndex:i]];
        
        NSInteger occurencesOfNumber = [occurences integerValue];
        if (occurencesOfNumber == 1) {
            return [[arrayOfNumbers objectAtIndex:i] integerValue];
        }
    }
    return 0;
}

@end
