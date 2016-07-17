//
//  Dog.m
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/9/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void)bark{
    NSLog(@"WOOF");
}
-(void)barkANumberOfTimes:(int)numberOfTimes{
    for(int a=0;a<numberOfTimes;a++)
        [self bark];
}
-(void)changeBreedToWerewolf{
    self.breed=@"werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud{
    for(int a =0;a<numberOfTimes;a++){
        if(isLoud){
            NSLog(@"WOOF WOOF MOTHAFUCKA");
        }
        else{
            NSLog(@"woofy woofy muthyfucky");
        }
    }
}
-(int)humanYears:(int)dogYears{
    int Years=dogYears*7;
    return Years;
}

@end
