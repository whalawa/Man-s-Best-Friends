//
//  MBFDog.h
//  Man's Best Friends
//
//  Created by Teddy Wyly on 9/10/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

// Our MBFDog class has four properties
@property (strong, nonatomic) NSString *name;
@property (nonatomic) int age;
@property (strong, nonatomic) NSString *breed;
@property (strong, nonatomic) UIImage *picture;

// This class also has four methods declared publicly
- (void)bark;

- (void)barkANumberOfTimes:(int)numberOfTimes;

- (void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;

- (int)ageInDogYearsFromAge:(int)regularAge;

@end
