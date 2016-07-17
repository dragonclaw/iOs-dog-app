//
//  Humano.h
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/10/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Humano : NSObject
@property (nonatomic,strong) NSString *raza;
@property (nonatomic) int edad;
@property (nonatomic, strong) NSString *sexo;
@property (nonatomic, strong) NSString *humor;
@property(nonatomic, strong) UIImage *foto;
@property(nonatomic) BOOL ganasDeCagar;


-(void)cagar;
-(void)comer:(NSString*)tipoDeComida;
-(NSString*)hablar;


@end
