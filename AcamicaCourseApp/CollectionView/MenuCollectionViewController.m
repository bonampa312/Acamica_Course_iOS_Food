//
//  MenuCollectionViewController.m
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/28/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import "MenuCollectionViewController.h"
#import "Food.h"
#import "MyFoodCollectionViewCell.h"

@interface MenuCollectionViewController ()

@property (nonatomic, strong) NSMutableArray *foods;

@end

@implementation MenuCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.foods.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Food *foodForIndex = [self.foods objectAtIndex:indexPath.row];
    
    MyFoodCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCellIdentifier" forIndexPath:indexPath];
    
    [cell setTitle:foodForIndex.name andImageName:foodForIndex.imageName];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
