//
//  ListViewController.h
//  Hamatoura
//
//  Created by Shadyk on 2/27/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "BaseViewController.h"

@interface ListViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSArray *array;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
