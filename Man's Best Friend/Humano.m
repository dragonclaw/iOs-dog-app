//
//  Humano.m
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/10/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import "Humano.h"

@implementation Humano

-(void)cagar{
    NSLog(@"ESTOY ECHANDO UNA TREMENDA XXXX");
}
-(void)comer:(NSString*)tipoDeComida{
    if(tipoDeComida == @"helado")
        NSLog(@"YUMMY YUMMY");
    else{
        NSLog(@"GUACALA");
    }
}

    -(NSString*)hablar{
        return self.humor;
    }

@end
