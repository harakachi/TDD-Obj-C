//
//  MoneyTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "MoneyTest.h"
#import "Money.h"
#import "Bank.h"

@implementation MoneyTest

- (void) testEquality
{
    GHAssertTrue( [[Money dollar:5] equals:[Money dollar:5]], @"NG object");
    GHAssertFalse([[Money dollar:5] equals:[Money dollar:6]], @"NG object");
    GHAssertFalse([[Money franc:5] equals:[Money dollar:5]], nil);
}
- (void)testCurrency
{
    GHAssertEquals(@"USD", [[Money dollar:1] currency], nil);
    GHAssertEquals(@"CHF", [[Money  franc:1] currency], nil);
}
- (void)testSimpleAddition
{
    //Money *sum = [[Money dollar:5] plus:[Money dollar:5]];
    //GHAssertTrue([[Money dollar:10] equals:sum], nil);
    
    Money *five = [Money dollar:5];
    Expression *sum = [five plus:[Money dollar:5]];
    Bank *bank = [[Bank alloc] init];
    Money *reduced = [bank reduce:sum :@"USD"];
    GHAssertTrue([[Money dollar:10] equals:reduced], nil);
}

/*
- (void)testDifferentClassEquality
{
    Money *a = [[Money alloc] initWithAmountAndCurrency:10 :@"CHF"];
    Franc *b = [[Franc alloc] initWithAmountAndCurrency:10 :@"CHF"];
    GHAssertTrue([a equals:b], nil);
}
 */

@end
