//
//  ListViewController.m
//  Hamatoura
//
//  Created by Shadyk on 2/27/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "ListViewController.h"
#import "WebViewViewController.h"
@interface ListViewController ()
@end

@implementation ListViewController

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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell = [[UITableViewCell alloc] init];
        cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
        return cell;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    WebViewViewController *webVC =  (WebViewViewController *)segue.destinationViewController;
    webVC.url = [NSURL URLWithString:@"http://www.hamatoura.com/Various/Other%20Topics/SdOrthodoxySLuke.pdf"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"listToWeb" sender:self];
    
}

@end
