//
//  FOUtils.h
//  BoxOTop
//
//  Created by Fabien Ouzeau on 18/06/2014.
//  Copyright (c) 2014 Fabien Ouzeau. All rights reserved.
//

/*
 
 Utils class for calling web service
 
 */

#import <Foundation/Foundation.h>

@interface FOUtils : NSObject

+ (NSDictionary*) callWebService:(NSString*) url;

@end
