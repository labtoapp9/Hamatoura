//
//  HomeViewController.m
//  Hamatoura
//
//  Created by Shadyk on 2/25/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "HomeViewController.h"
#define SECTIONS_NEWS 0
#define SECTION_COMING_SOON 1
#define SECTION_SCHEDULE 2

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma - mark Table Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == SECTION_COMING_SOON) {
        return 4;
    }
    else if (section == SECTION_SCHEDULE) {
        return 7 ;
    }
    else {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == SECTION_COMING_SOON) {
        UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
        cell.textLabel.text =[NSString stringWithFormat:@"Coming soon %ld ",(long)indexPath.row];
        return cell;
    }
    else if (indexPath.section == SECTION_SCHEDULE) {
        UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
        cell.textLabel.text =[NSString stringWithFormat:@"SCHEDULE %ld ",(long)indexPath.row];
        return cell;
    }
    else if (indexPath.section == SECTIONS_NEWS) {
        UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
        cell.textLabel.text =[NSString stringWithFormat:@"NEWS  %ld",(long)indexPath.row];
        return cell;
    }
    return nil;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == SECTION_COMING_SOON) {
        return @"Coming Soon";
    }
    else if (section == SECTION_SCHEDULE) {
        return @"SECTION_SCHEDULE";
    }
    else {
        return @"SECTIONS_NEWS";
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
