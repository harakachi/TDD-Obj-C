//
//  FrancTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "FrancTest.h"
#import "Money.h"

@implementation FrancTest

- (void)testMultiplication
{
    Money *five = [Money franc:5];
    GHAssertEquals([[Money franc:10] amount], [[five times:2] amount], nil);
    GHAssertEquals([[Money franc:15] amount], [[five times:3] amount], nil);
}

@end
