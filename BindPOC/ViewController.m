//
//  ViewController.m
//  BindPOC
//
//  Created by Ashraf Abu Bakr on 3/25/15.
//  Copyright (c) 2015 Ashraf Abu Bakr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [carsTableView setDelegate:self];
    [carsTableView setDataSource:self];
    
    data = [[ServiceCalls alloc]init];
    [data setDelegate:self];
    [data GetCars];
    [carsTableView reloadData];
}

#pragma mark - Tableview Datasource Methods
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return data.carsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CarTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CarCell"];
    Cars * car = [data.carsArray objectAtIndex:indexPath.row];
//  [cell SetupCellWithManufacturer:car.manufacturer Country:car.country Model:car.model];
    [cell SetupCellWithDataModel:car];
    return cell;
}
#pragma mark - Tableview Delegate Methods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Cars * car = [data.carsArray objectAtIndex:indexPath.row];
    [car AppendLetterToCountry:@"a"];
}

#pragma mark - Other Methods
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ReloadData
{
    [carsTableView reloadData];
}

@end
