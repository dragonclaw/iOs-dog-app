//
//  Dog.h
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/9/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Dog : NSObject

@property(nonatomic) int age;
@property(nonatomic, strong) NSString *breed;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)humanYears:(int)dogYears;

@end
