//
//  ServiceCalls.m
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/26/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import "ServiceCalls.h"

@implementation ServiceCalls
@synthesize carsArray,delegate;
-(void)GetCars
{
    NSString * string = @"https://demo8038401.mockable.io/GetCars";
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSDictionary * __block resultDict;
    // 2
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        // 3
        NSDictionary * dataDict = (NSDictionary *)responseObject;
        [self setCarsArray:[[NSMutableArray alloc] init]];
        for (NSDictionary * dict in dataDict[@"Cars"])
        {
            Cars * car = [[Cars alloc] initWithDictionary:dict];
            [self.carsArray addObject:car];
        }
        [self.delegate performSelector:@selector(ReloadData) withObject:nil afterDelay:0.0];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // 4
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    // 5
    [operation start];
}

@end
