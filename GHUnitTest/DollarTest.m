//
//  DollarTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "DollarTest.h"
#import "Money.h"

@implementation DollarTest

- (void)testMultiplication
{
    Money *five = [Money dollar:5];
    
    GHAssertEquals([[Money dollar:10] amount], [[five times:2] amount], nil);
    GHAssertEquals([[Money dollar:15] amount], [[five times:3] amount], nil);
}

- (void) testEquality
{
    GHAssertTrue( [[Money dollar:5] equals:[Money dollar:5]], @"NG object");
    GHAssertFalse([[Money dollar:5] equals:[Money dollar:6]], @"NG object");
}

@end
