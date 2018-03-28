//
//  ViewController.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/27/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.text = @"Hello world";
    self.imageView.backgroundColor = [UIColor redColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTestMethod:(id)sender {
    self.imageView.backgroundColor = [UIColor blackColor];
}

@end
