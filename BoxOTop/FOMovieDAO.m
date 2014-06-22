//
//  FOMovieDAO.m
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

#import "FOMovieDAO.h"

@implementation FOMovieDAO

+(NSMutableArray*) searchMovie:(NSString*) movie {
	
	NSDictionary *dico = [FOUtils callWebService:[[NSString alloc] initWithFormat:@"s=%@", movie]];
	
	NSMutableArray *movieArray = [[NSMutableArray alloc] init];
	movieArray = [dico mutableArrayValueForKey:@"Search"];
	
	return movieArray;
}


@end
