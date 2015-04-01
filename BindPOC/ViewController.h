//
//  ViewController.h
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/25/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarTableViewCell.h"
#import "AppDelegate.h"
#import "CarTableViewCell.h"
#import "ServiceCalls.h"
#import "Cars.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    
    __weak IBOutlet UITableView *carsTableView;
    ServiceCalls * data;
}


@end

