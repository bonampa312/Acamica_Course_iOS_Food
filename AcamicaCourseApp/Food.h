//
//  Food.h
//  AcamicaCourseApp
//
//  Created by Santiago Romero Restrepo on 3/27/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *foodDescription;
@property (nonatomic, strong) NSString *imageName;

- (void) name: (NSString*) parameter1 description:(NSString*) parameter2;
+ (BOOL) testMethod;

@end
