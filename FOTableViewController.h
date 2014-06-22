//
//  FOTableViewController.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 22/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FOTableViewCellMovie.h"
#import "FOViewControllerDetails.h"
#import "FOMovieDAO.h"

@interface FOTableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *movieArray;

@end
