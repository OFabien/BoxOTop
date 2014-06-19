//
//  FOUtils.m
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

/*

		Utils class for calling web service
 
*/

#import "FOUtils.h"

@implementation FOUtils

+ (NSDictionary*) callWebService:(NSString *)url {
	
	NSURLRequest *Request = [NSURLRequest requestWithURL:[NSURL URLWithString:[@"http://www.omdbapi.com/?" stringByAppendingString:url]]];
    NSURLResponse *resp = nil;
    NSError *error = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest: Request returningResponse: &resp error: &error];
	NSDictionary *dictio = [NSJSONSerialization JSONObjectWithData:response options:0 error:&error];
	
	return dictio;
}

@end
