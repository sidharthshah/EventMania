//
//  ServiceClient.h
//  EventMania
//
//  Created by Sidharth Shah on 1/6/13.
//  Copyright (c) 2013 Sidharth Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceClient : NSObject

-(BOOL) authUser:(NSString*)username password:(NSString*)password;
@end
