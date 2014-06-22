//
//  FOViewController.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FOMovieDAO.h"
#import "FOTableViewController.h"

@interface FOViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>
@property (strong, nonatomic) IBOutlet UISearchBar *sb_title;
@property (strong, nonatomic) IBOutlet UITableView *tv_history;
@property (copy, nonatomic) NSArray *aHistory;
@property (strong, nonatomic) NSMutableArray *movieArray;


@end
