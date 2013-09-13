//
//  MBFPuppy.m
//  Man's Best Friends
//
//  Created by Teddy Wyly on 9/11/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

- (void)givePuppyEyes
{
    NSLog(@":(");
}

// Implementing the method declared in our superclass (MBFDog)
- (void)bark
{
    NSLog(@"whimper whimper");
    [self givePuppyEyes];

}

@end
