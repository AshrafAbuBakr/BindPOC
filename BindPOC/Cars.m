//
//  Cars.m
//
//  Created by   on 3/26/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Cars.h"


NSString *const kCarsID = @"ID";
NSString *const kCarsManufacturer = @"Manufacturer";
NSString *const kCarsCountry = @"Country";
NSString *const kCarsModel = @"Model";


@interface Cars ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Cars

@synthesize iDProperty = _iDProperty;
@synthesize manufacturer = _manufacturer;
@synthesize country = _country;
@synthesize model = _model;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.iDProperty = [self objectOrNilForKey:kCarsID fromDictionary:dict];
            self.manufacturer = [self objectOrNilForKey:kCarsManufacturer fromDictionary:dict];
            self.country = [self objectOrNilForKey:kCarsCountry fromDictionary:dict];
            self.model = [self objectOrNilForKey:kCarsModel fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.iDProperty forKey:kCarsID];
    [mutableDict setValue:self.manufacturer forKey:kCarsManufacturer];
    [mutableDict setValue:self.country forKey:kCarsCountry];
    [mutableDict setValue:self.model forKey:kCarsModel];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.iDProperty = [aDecoder decodeObjectForKey:kCarsID];
    self.manufacturer = [aDecoder decodeObjectForKey:kCarsManufacturer];
    self.country = [aDecoder decodeObjectForKey:kCarsCountry];
    self.model = [aDecoder decodeObjectForKey:kCarsModel];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_iDProperty forKey:kCarsID];
    [aCoder encodeObject:_manufacturer forKey:kCarsManufacturer];
    [aCoder encodeObject:_country forKey:kCarsCountry];
    [aCoder encodeObject:_model forKey:kCarsModel];
}

- (id)copyWithZone:(NSZone *)zone
{
    Cars *copy = [[Cars alloc] init];
    
    if (copy) {

        copy.iDProperty = [self.iDProperty copyWithZone:zone];
        copy.manufacturer = [self.manufacturer copyWithZone:zone];
        copy.country = [self.country copyWithZone:zone];
        copy.model = [self.model copyWithZone:zone];
    }
    
    return copy;
}

-(void)AppendLetterToCountry:(NSString *)letter
{
    self.country = [self.country stringByAppendingString:letter];
}


@end
