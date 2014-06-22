//
//  FOViewControllerDetails.m
//  BoxOTop
//
//  Created by Fabien Ouzeau on 22/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import "FOViewControllerDetails.h"

@interface FOViewControllerDetails ()

@end

@implementation FOViewControllerDetails

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.year.text = self.strYear;
	self.synopsis.text = self.strSynopsis;
	self.actors.text =self.strActors;
	NSURL *url = [NSURL URLWithString:self.urlImage];
	NSData *data = [NSData dataWithContentsOfURL:url];
	UIImage *img = [[UIImage alloc] initWithData:data];
	self.picture.image =img;
	self.navBar.title = self.strTitle;
	self.picRated.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", self.strRated]];
	if (_intRating < 1) {
		self.picRating.image = [UIImage imageNamed:@"00.jpeg"];
	} else if (_intRating >= 1 && _intRating < 2) {
		self.picRating.image = [UIImage imageNamed:@"05.jpeg"];
	} else if (_intRating >= 2 && _intRating < 3) {
		self.picRating.image = [UIImage imageNamed:@"10.jpeg"];
	} else if (_intRating >= 3 && _intRating < 4) {
		self.picRating.image = [UIImage imageNamed:@"15.jpeg"];
	} else if (_intRating >= 4 && _intRating < 5) {
		self.picRating.image = [UIImage imageNamed:@"20.jpeg"];
	} else if (_intRating >= 5 && _intRating < 6) {
		self.picRating.image = [UIImage imageNamed:@"25.jpeg"];
	} else if (_intRating >= 6 && _intRating < 7) {
		self.picRating.image = [UIImage imageNamed:@"30.jpeg"];
	} else if (_intRating >= 7 && _intRating < 8) {
		self.picRating.image = [UIImage imageNamed:@"35.jpeg"];
	} else if (_intRating >= 8 && _intRating < 9) {
		self.picRating.image = [UIImage imageNamed:@"40.jpeg"];
	} else if (_intRating >= 9 && _intRating < 10)  {
		self.picRating.image = [UIImage imageNamed:@"45.jpeg"];
	} else {
		self.picRating.image = [UIImage imageNamed:@"50.jpeg"];
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
