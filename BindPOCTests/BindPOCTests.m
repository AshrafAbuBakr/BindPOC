//
//  BindPOCTests.m
//  BindPOCTests
//
//  Created by Ashraf Abu Bakr on 3/25/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Cars.h"
//#import "BNDViewModel.h"

@interface BindPOCTests : XCTestCase
{
    Cars * car;
}
@end

@implementation BindPOCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    car = [[Cars alloc]init];
    [car setIDProperty:@"11"];
    [car setModel:@"Lance EX"];
    [car setManufacturer:@"Mitsubishi"];
    [car setCountry:@"Japan"];
}

-(void)testAppendLetter
{
    [car AppendLetterToCountry:@"b"];
    XCTAssertTrue([car.country isEqualToString:@"Japanb"],@"Appending Fail");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
