//
//  DollarTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/27.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "DollarTest.h"
#import "Dollar.h"

@implementation DollarTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testMultiplication
{
    Dollar *five = [[Dollar alloc] initWithAmount:5];
    [five times:2];
    STAssertEquals([five amount], 10, @"aaaaa");
}

@end
