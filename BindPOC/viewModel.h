//
//  viewModel.h
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/27/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNDViewModel.h"

@interface viewModel : NSObject<BNDViewModel>
@property (strong, nonatomic) NSString * name;
-(void)ChangeNameTo:(NSString *)nm;
@end
