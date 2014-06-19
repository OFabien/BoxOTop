//
//  FOMovie.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FOMovie : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSString *rating;
@property (strong, nonatomic) NSString *released;
@property (strong, nonatomic) NSString *genre;
@property (strong, nonatomic) NSString *director;
@property (strong, nonatomic) NSString *writer;
@property (strong, nonatomic) NSString *actors;
@property (strong, nonatomic) NSString *country;
@property (strong, nonatomic) NSString *awards;
@property (strong, nonatomic) NSString *poster;
@property (strong, nonatomic) NSString *type;

@end
