//
//  SectionViewController.h
//  Hamatoura
//
//  Created by Shadyk on 3/1/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "BaseViewController.h"

@interface SectionViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSInteger selected;
@property (nonatomic) NSArray *sectionsArray;

@end
