//
//  MyFoodCollectionViewCell.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "MyFoodCollectionViewCell.h"

@interface MyFoodCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end


@implementation MyFoodCollectionViewCell

- (void) setTitle:(NSString*) title andImageName:(NSString*) photoName {
    [self.title setText:title];
    [self.foodImage setImage:[UIImage imageNamed:photoName]];
}

@end
