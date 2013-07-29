//
//  DollarTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "DollarTest.h"
#import "Dollar.h"

@implementation DollarTest

- (void)testMultiplication
{
    Dollar *five = [[Dollar alloc] initWithAmount:5];
    GHAssertEquals([[[Dollar alloc] initWithAmount:10] amount], [[five times:2] amount], nil);
    GHAssertEquals([[[Dollar alloc] initWithAmount:15] amount], [[five times:3] amount], nil);
}

- (void) testEquality
{
    Dollar *five = [[Dollar alloc] initWithAmount:5];
    GHAssertTrue([five equals:[[Dollar alloc] initWithAmount:5]], @"NG object");
    GHAssertFalse([five equals:[[Dollar alloc] initWithAmount:6]], @"NG object");
}

@end
