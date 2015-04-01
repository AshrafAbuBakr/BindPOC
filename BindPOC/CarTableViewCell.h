//
//  CarTableViewCell.h
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/26/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BIND.h"
#import "Cars.h"

@interface CarTableViewCell : UITableViewCell
{
    __weak IBOutlet UILabel *manufacturerLabel;
    __weak IBOutlet UILabel *countryLabel;
    __weak IBOutlet UILabel *modelLabel;
}

-(void)SetupCellWithManufacturer:(NSString *)manufacturer Country:(NSString *)country Model:(NSString *)model;
-(void)SetupCellWithDataModel:(Cars *)car;

@end
