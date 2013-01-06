//
//  ServiceClient.m
//  EventMania
//
//  Created by Sidharth Shah on 1/6/13.
//  Copyright (c) 2013 Sidharth Shah. All rights reserved.
//

#import "ServiceClient.h"
#import "AFNetworking.h" 
#import "JSONKit.h" 

@implementation ServiceClient

-(BOOL) authUser:(NSString*)username password:(NSString*)password{
    NSLog(@"Called Auth User");
    return TRUE;
}
@end
