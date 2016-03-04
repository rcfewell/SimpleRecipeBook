//
//  ViewController.h
//  SimpleRecipeBook
//
//  Created by Riley Fewell on 2/18/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailedViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end

