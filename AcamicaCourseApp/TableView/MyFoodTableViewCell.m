//
//  MyFoodTableViewCell.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "MyFoodTableViewCell.h"

@interface MyFoodTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *foodDescription;

@end

@implementation MyFoodTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setTitle:(NSString*) title description:(NSString*) description andImageName:(NSString*) photoName {
    [self.title setText:title];
    [self.foodDescription setText:description];
    [self.foodImage setImage:[UIImage imageNamed:photoName]];
}


@end
