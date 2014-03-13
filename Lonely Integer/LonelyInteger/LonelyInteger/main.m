//
//  main.m
//  LonelyInteger
//
//  Created by Ashish Agarwal on 2014-03-12.
//  Copyright (c) 2014 Ashish Agarwal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LonelyInteger.h"

int main(int argc, const char * argv[])
{
    int numberOfIntegers;
    scanf("%i", &numberOfIntegers);
   
    char input[100];
    NSString *inputString;
    
    scanf(" %[^\n]s", input);
    inputString = [NSString stringWithCString:input encoding:NSASCIIStringEncoding];
    
    NSArray *tempStrings = [inputString componentsSeparatedByString:@" "];
    NSMutableArray *inputNumbers = [NSMutableArray array];
    
    for (int i = 0; i < numberOfIntegers; i++) {
        NSString *string = [tempStrings objectAtIndex:i];
        [inputNumbers addObject: string];
    }
    
    LonelyInteger *lonelyObject = [[LonelyInteger alloc] initWithArray:inputNumbers];
    NSInteger lonelyInteger = [lonelyObject singleInteger];
    
    NSLog(@"%li", (long)lonelyInteger);
   
    return 0;
}

