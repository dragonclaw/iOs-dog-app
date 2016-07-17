//
//  ViewController.h
//  Man's Best Friend
//
//  Created by JONATHAN ROMERO on 7/9/16.
//  Copyright © 2016 JONATHAN ROMERO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)dogButtonPressed:(UIBarButtonItem *)sender;


@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

@end

