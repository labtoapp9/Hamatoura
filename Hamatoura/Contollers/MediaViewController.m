//
//  MediaViewController.m
//  Hamatoura
//
//  Created by Shadyk on 2/25/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "MediaViewController.h"
#import "Section.h"

@interface MediaViewController ()

@end

@implementation MediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Section *section1 = [[Section alloc] init];
    section1.title = @"Pictures";
    Section *section2 = [[Section alloc] init];
    section2.title = @"Videos";
    Section *sectioon3 = [[Section alloc] init];
    sectioon3.title = @"Chants";
    
    self.sectionsArray = @[section1,section2,sectioon3];
    self.selected = -1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    ListViewController *listVC =  (ListViewController *)segue.destinationViewController;
//    if(self.selected == 0)
//        listVC.array = @[@"Sermons 1",@"Sermons 2",@"Sermons 11",@"Sermons 21",@"Sermons 41",@"Sermons 13",];
//    else if(self.selected == 1)
//        listVC.array = @[@"Liturgical 1",@"Liturgical 2",@"Liturgical 11",@"Liturgical 21",@"Liturgical 41",@"Liturgical 13",];
//    else
//        listVC.array = @[@"Articles 1",@"Articles 2",@"Articles 11",@"Articles 21",@"Articles 41",@"Articles 13",];
}


@end
