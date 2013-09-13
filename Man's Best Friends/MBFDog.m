//
//  MBFDog.m
//  Man's Best Friends
//
//  Created by Teddy Wyly on 9/10/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

// The implementation of each method declared in the header, or .h, file.

- (void)bark
{
    NSLog(@"Woof Woof");
}

- (void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++) {
        [self bark];
    }
}

- (void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"yip yip");
        }
    } else {
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"RUFF! RUFF!");
        }
    }
}

- (int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}



@end
