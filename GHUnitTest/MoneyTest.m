//
//  MoneyTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "MoneyTest.h"
#import "Money.h"

@implementation MoneyTest

- (void) testEquality
{
    GHAssertTrue( [[Money dollar:5] equals:[Money dollar:5]], @"NG object");
    GHAssertFalse([[Money dollar:5] equals:[Money dollar:6]], @"NG object");
    GHAssertTrue( [[Money franc:5] equals:[Money franc:5]], @"NG object");
    GHAssertFalse([[Money franc:5] equals:[Money franc:6]], @"NG object");
    
    GHAssertFalse([[Money franc:5] equals:[Money dollar:5]], nil);
}
- (void)testCurrency
{
    GHAssertEquals(@"USD", [[Money dollar:1] currency], nil);
    GHAssertEquals(@"CHF", [[Money  franc:1] currency], nil);
}

@end
