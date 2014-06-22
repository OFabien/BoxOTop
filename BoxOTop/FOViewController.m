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
	[self.view addSubview:_indicator];
	
	self.aHistory = [[NSMutableArray alloc] init];
	
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
	//[searchBar resignFirstResponder];
	[self getMovie:searchBar.text];
	[[self aHistory] addObject:searchBar.text];
	[[self tv_history] reloadData];
}

#pragma mark - Segue

- (void) getMovie:(NSString*) movie {
	[_indicator startAnimating];
	dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
	
	dispatch_async(queue, ^{
		[self setMovieArray:[FOMovieDAO searchMovie:movie]];
		dispatch_async(dispatch_get_main_queue(), ^{
			[self performSegueWithIdentifier:@"searchSegue" sender:0];
		});
	});
	[_indicator stopAnimating];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[self getMovie:[self.aHistory objectAtIndex:indexPath.row]];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	
	FOTableViewController *tvc = [segue destinationViewController];
	[tvc setMovieArray:[self movieArray]];

}

@end
