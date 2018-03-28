//
//  MenuTableViewController.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "MenuTableViewController.h"
#import "Food.h"
#import "MyFoodTableViewCell.h"

@interface MenuTableViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *foods;
@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.foods = [NSMutableArray new];
    
    Food *meal = [[Food alloc] init];
    meal.name = @"meat meal";
    meal.foodDescription = @"such a great meat";
    meal.imageName = @"meat";
    
    Food *taco = [Food new];
    taco.name = @"This is a taco";
    taco.foodDescription = @"Love tacos, love chimichangas";
    taco.imageName = @"taco";
    
    Food *burrito = [Food new];
    burrito.name = @"Burrito Rules";
    burrito.foodDescription = @"Quite same as a taco, but rolled up";
    burrito.imageName = @"burrito";
    
    Food *beans = [Food new];
    beans.name = @"Beans soup";
    beans.foodDescription = @"Dont like soups";
    beans.imageName = @"beans";
    
    [self.foods addObjectsFromArray:@[meal, taco, beans, burrito]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.foods.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyFoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCellIdentifier" forIndexPath:indexPath];
    Food *foodForCellAtIndex = [self.foods objectAtIndex:indexPath.item];
    [cell setTitle:foodForCellAtIndex.name description:foodForCellAtIndex.foodDescription andImageName:foodForCellAtIndex.imageName];
    return cell;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110;
}



@end
