//
//  ViewController.m
//  EventMania
//
//  Created by Sidharth Shah on 1/6/13.
//  Copyright (c) 2013 Sidharth Shah. All rights reserved.
//

#import "ViewController.h"
#import "ServiceClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ServiceClient* client = [[ServiceClient alloc] init];
    [client authUser:@"iamsidd" password:@"password"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
