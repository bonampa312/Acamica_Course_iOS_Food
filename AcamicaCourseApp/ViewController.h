//
//  ViewController.h
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/27/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIView *viewToAnimate;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewWidthConstraint;


@end

