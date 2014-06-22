//
//  FOMovieDAO.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FOUtils.h"
#import "FOMovie.h"

@interface FOMovieDAO : NSObject

+ (NSMutableArray*) searchMovie:(NSString*) movie;
+ (NSDictionary*) detailsMovie:(NSString*) movie;

@end
