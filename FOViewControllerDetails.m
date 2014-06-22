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
	self.uipicRated.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg", self.strRated]];
	self.picRating.image = [UIImage imageNamed:@"00.jpeg"];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
