//
//  ViewController.m
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/9/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "LittlePuppy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.

    Dog *Mydog = [[Dog alloc] init];
    Mydog.name = @"Perruno";
    Mydog.breed= @"St. Bernard";
    Mydog.age = 1;
    Mydog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    self.myImageView.image = Mydog.image;
    self.breedLabel.text = Mydog.breed;
    self.nameLabel.text = Mydog.name;
    self.currentIndex = 0;
    
    Dog *secondDog =[[Dog alloc] init];
    secondDog.name =@"Bichito";
    secondDog.breed =@"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    Dog *thirdDog = [[Dog alloc] init];
    thirdDog.name = @"Tostao";
    thirdDog.breed = @"Border Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    Dog *fourthDog = [[Dog alloc]init];
    fourthDog.name = @"Desbolea'o";
    fourthDog.breed = @"GreyHound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc]init];
    
    [self.myDogs addObject:Mydog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    LittlePuppy *littlePuppy= [[LittlePuppy alloc]init];
    littlePuppy.name = @"Pelo e' Rabo";
    littlePuppy.breed = @"Portuguese";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    [self.myDogs addObject:littlePuppy];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dogButtonPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    while (self.currentIndex == randomIndex) {
        randomIndex = arc4random() % numberOfDogs;
    }
    Dog *randomDog = [[Dog alloc]init];
    randomDog = [self.myDogs objectAtIndex:randomIndex];
    sender.title = @"And Another!!!";
    [UIView transitionWithView:self.view duration:1.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.nameLabel.text = randomDog.name;
        self.breedLabel.text = randomDog.breed;
        self.currentIndex = randomIndex;
    } completion:^(BOOL finished) {

    }];
    
    
}
@end
