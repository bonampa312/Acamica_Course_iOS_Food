//
//  ViewController.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/27/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *array;
@property BOOL *isViewGreen;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.text = @"Hello world";
    self.isViewGreen = false;
    self.imageView.backgroundColor = [UIColor redColor];
    self.textField.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"userName"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTestMethod:(id)sender {
    self.imageView.backgroundColor = (self.imageView.backgroundColor == [UIColor blackColor]) ? [UIColor blueColor] : [UIColor blackColor];
}

- (void)textFieldDidEndEditing:(UITextField*) textField {
    if (textField.text) {
        [[NSUserDefaults standardUserDefaults] setObject:textField.text forKey:@"userName"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (BOOL)textFieldShouldReturn: (UITextField*) textField {
    [textField resignFirstResponder];
    return true;
}
- (IBAction)showAlert:(id)sender {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"This is a happy alert!" message: @"Don't you dare to press OK button." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"The Hazelnut is planted");
    }];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:true completion:nil];
}

- (IBAction)animateView:(id)sender {
    if (self.isViewGreen) {
        self.viewWidthConstraint.constant = 240.0f;
        self.viewHeightConstraint.constant = 120.0f;
        __weak ViewController *weakSelf = self;
        [UIView animateWithDuration:0.5 animations:^{
            [self.view layoutIfNeeded];
            self.viewToAnimate.backgroundColor = [UIColor redColor];
        } completion:^(BOOL finished) {
            weakSelf.isViewGreen = false;
            finished = true;
        }];
    } else {
        self.viewWidthConstraint.constant = 300.0f;
        self.viewHeightConstraint.constant = 150.0f;
        __weak ViewController *weakSelf = self;
        
        [UIView animateWithDuration:0.5 animations:^{
            [self.view layoutIfNeeded];
            self.viewToAnimate.backgroundColor = [UIColor greenColor];
        } completion:^(BOOL finished) {
            weakSelf.isViewGreen = true;
            finished = true;
        }];
        
    }
    
}


@end
