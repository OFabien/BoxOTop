//
//  FOViewControllerDetails.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 22/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FOMovie.h"

@interface FOViewControllerDetails : UIViewController

@property (strong, nonatomic) FOMovie *movieDetails;
@property (strong, nonatomic) NSString *strYear;
@property (strong, nonatomic) NSString *strSynopsis;
@property (strong, nonatomic) NSString *strActors;
@property (strong, nonatomic) NSString *urlImage;
@property (strong, nonatomic) NSString *strRating;
@property (strong, nonatomic) IBOutlet UINavigationItem *navBar;
@property (strong, nonatomic) NSString *strTitle;
@property (strong, nonatomic) IBOutlet UIImageView *picture;
@property (strong, nonatomic) IBOutlet UILabel *year;
@property (strong, nonatomic) IBOutlet UITextView *synopsis;
@property (strong, nonatomic) IBOutlet UITextView *actors;
@property (strong, nonatomic) NSMutableArray *picRated;
@property (strong, nonatomic) NSString *strRated;
@property (strong, nonatomic) IBOutlet UIImageView *uipicRated;

@end
