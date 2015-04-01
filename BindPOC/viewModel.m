//
//  viewModel.m
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/27/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import "viewModel.h"

@implementation viewModel
@synthesize name;

-(void)ChangeNameTo:(NSString *)nm
{
    self.name = nm;
}
@end
