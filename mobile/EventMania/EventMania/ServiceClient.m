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

NSString* BASE_URL = @"http://127.0.0.1:8000/api";

-(BOOL) authUser:(NSString*)username password:(NSString*)password{
    NSLog(@"Called Auth User");
    NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"username", @"iamsidd",
                            @"passwd", @"k4k4Sidd",
                            nil];
    
    AFHTTPClient* client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:BASE_URL]];
    [client registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [client postPath:@"auth" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"Success");
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Fail");
        NSLog(@"Request Failed with Error: %@, %@", error, error.userInfo);
    }];
    
    return TRUE;
}
@end
