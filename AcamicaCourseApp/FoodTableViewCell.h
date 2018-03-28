//
//  FoodTableViewCell.h
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *thisIsATitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *thisIsADescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thisIsAPhotoImageView;


- (void) setTitle:(NSString*) title description:(NSString*) description andImageName:(NSString*) photoName;
@end
