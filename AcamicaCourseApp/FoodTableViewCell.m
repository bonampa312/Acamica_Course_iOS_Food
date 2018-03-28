//
//  FoodTableViewCell.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "FoodTableViewCell.h"


@interface FoodTableViewCell ()


@end


@implementation FoodTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setTitle:(NSString*) title description:(NSString*) description andImageName:(NSString*) photoName {
    [self.thisIsATitleLabel setText:title];
    [self.thisIsADescriptionLabel setText:description];
    [self.thisIsAPhotoImageView setImage:[UIImage imageNamed:photoName]];
}

@end
