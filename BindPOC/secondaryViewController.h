//
//  secondaryViewController.h
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/27/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BIND.h"
#import "viewModel.h"

@interface secondaryViewController : UIViewController<UITextFieldDelegate>
{
    __weak IBOutlet UILabel *bindLabel;
    __weak IBOutlet UITextField *bindTextfield;
    viewModel * vModel;
}
- (IBAction)TextChanged:(id)sender;

@end
