//
//  CarTableViewCell.m
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/26/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import "CarTableViewCell.h"

@implementation CarTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)SetupCellWithManufacturer:(NSString *)manufacturer Country:(NSString *)country Model:(NSString *)model
{
    [manufacturerLabel setText:manufacturer];
    [countryLabel setText:country];
    [modelLabel setText:model];
}

-(void)SetupCellWithDataModel:(Cars *)car
{
    BIND(car,manufacturer,->,manufacturerLabel,text);
    BIND(car,model,->,modelLabel,text);
    BIND(car,country,->,countryLabel,text);
}

@end
