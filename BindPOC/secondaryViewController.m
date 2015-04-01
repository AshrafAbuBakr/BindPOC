//
//  secondaryViewController.m
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/27/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import "secondaryViewController.h"

@interface secondaryViewController ()

@end

@implementation secondaryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [bindTextfield setDelegate:self];
    // Do any additional setup after loading the view.
    BINDS(bindTextfield, ->, bindLabel);
    vModel = [[viewModel alloc]init];
    
    BINDSR(vModel,name,->,bindLabel);
//    vModel.name = @"Hobbit";
    //nameLabel.text says Hobbit at this point.
    
    BINDSL(bindTextfield,->,vModel,name);
//    bindTextfield.text = @"Cartman";
    //viewModel.name says Cartman at this point.
    
//    [BINDSR(vModel,name,->,bindLabel) observe:^(id observable, id value){
//        //Fired when name changes on the viewModel.
//        [bindLabel setText:vModel.name];
//    }];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
//    vModel.name = textField.text;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
//    vModel.name = textField.text;
//    [vModel ChangeNameTo:textField.text];
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)TextChanged:(id)sender
{
    UITextField * textField = (UITextField *)sender;
    [vModel ChangeNameTo:textField.text];
}
@end
