//
//  FOViewController.m
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import "FOViewController.h"

@interface FOViewController ()

@end

@implementation FOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[[self navBar] setHidesBackButton:YES animated:NO];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableVIew Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.aHistory count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *identifier = @"simpleCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell == nil) {
		cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}
	
	cell.textLabel.text = self.aHistory[indexPath.row];
	
	return cell;
}

#pragma mark - SearchBarMethods

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
	[searchBar resignFirstResponder];
	[self setMovieArray:[FOMovieDAO searchMovie:[searchBar text]]];
	[self performSegueWithIdentifier:@"searchSegue" sender:0];
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	FOTableViewController *tvc = [segue destinationViewController];
	[tvc setMovieArray:[self movieArray]];
}

@end
