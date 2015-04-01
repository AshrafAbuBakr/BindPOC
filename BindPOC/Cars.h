//
//  Cars.h
//
//  Created by   on 3/26/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNDViewModel.h"



@interface Cars : NSObject <NSCoding, NSCopying, BNDViewModel>

@property (nonatomic, strong) NSString *iDProperty;
@property (nonatomic, strong) NSString *manufacturer;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *model;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;
- (void)AppendLetterToCountry:(NSString *)letter;
@end
