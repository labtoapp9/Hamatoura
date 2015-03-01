//
//  ReadingsViewController.m
//  Hamatoura
//
//  Created by Shadyk on 2/25/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "ReadingsViewController.h"
#import "ListViewController.h"
#import "Section.h"
@interface ReadingsViewController ()

@end

@implementation ReadingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Section *sermons = [[Section alloc] init];
    sermons.title = @"Sermons";
    Section *litu = [[Section alloc] init];
    litu.title = @"Liturgical";
    Section *art = [[Section alloc] init];
    art.title = @"Articles";

    self.sectionsArray = @[sermons,litu,art];
    self.selected = -1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ListViewController *listVC =  (ListViewController *)segue.destinationViewController;
    if(self.selected == 0)
        listVC.array = @[@"Sermons 1",@"Sermons 2",@"Sermons 11",@"Sermons 21",@"Sermons 41",@"Sermons 13",];
    else if(self.selected == 1)
        listVC.array = @[@"Liturgical 1",@"Liturgical 2",@"Liturgical 11",@"Liturgical 21",@"Liturgical 41",@"Liturgical 13",];
    else
        listVC.array = @[@"Articles 1",@"Articles 2",@"Articles 11",@"Articles 21",@"Articles 41",@"Articles 13",];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selected = indexPath.row;
    [self performSegueWithIdentifier:@"readToList" sender:self];
    
}

@end
