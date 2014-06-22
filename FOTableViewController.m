//
//  FOTableViewController.m
//  BoxOTop
//
//  Created by Fabien Ouzeau on 22/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import "FOTableViewController.h"

@interface FOTableViewController ()

@end

@implementation FOTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
    return [[self movieArray] count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *identifier = @"movieCell";
	
	FOTableViewCellMovie *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell == nil) {
		cell =[[FOTableViewCellMovie alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}
	NSDictionary *dico = self.movieArray[indexPath.row];
	cell.title.text = [dico objectForKey:@"Title"];
	cell.year.text = [dico objectForKey:@"Year"];
	
	return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	FOViewControllerDetails *vcd = [segue destinationViewController];
	NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
	NSDictionary *dico = self.movieArray[indexPath.row];
	NSDictionary *dicoMovie = [FOMovieDAO detailsMovie:[dico objectForKey:@"Title"]];
	vcd.strYear = [dicoMovie objectForKey:@"Year"];
	vcd.strSynopsis = [dicoMovie objectForKey:@"Plot"];
	vcd.strActors = [dicoMovie objectForKey:@"Actors"];
	vcd.urlImage = [dicoMovie objectForKey:@"Poster"];
	vcd.intRating = [[dicoMovie objectForKey:@"imdbRating"] integerValue];
	vcd.strTitle = [dico objectForKey:@"Title"];
	vcd.strRated = [dicoMovie objectForKey:@"Rated"];
}

@end
