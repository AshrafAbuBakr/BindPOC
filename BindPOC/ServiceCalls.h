//
//  ServiceCalls.h
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/26/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "Cars.h"

@interface ServiceCalls : NSObject
@property (strong, nonatomic) NSMutableArray * carsArray;
@property id delegate;

-(void)GetCars;

@end
