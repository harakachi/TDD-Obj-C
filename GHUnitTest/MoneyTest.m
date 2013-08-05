//
//  MoneyTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "MoneyTest.h"
#import "Money.h"
#import "Expression.h"
#import "Bank.h"
#import "Sum.h"

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
   // Money *sum = [[Money dollar:5] plus:[Money dollar:5]];
   // GHAssertTrue([[Money dollar:10] equals:sum], nil);
    
    Money *five = [Money dollar:5];
    Expression *sum = [five plus:five];
    Bank *bank = [[Bank alloc] init];
    Money *reduced = [bank reduce:sum :@"USD"];
    GHAssertTrue([[Money dollar:10] equals:reduced], nil);
}

- (void)testPlusReturnsSum{
    Money *five = [Money dollar:5];
    Expression *result = [five plus:five];
    Sum *sum = (Sum *)result;
    GHAssertTrue([five equals:[sum augend]], nil);
    GHAssertTrue([five equals:[sum addend]], nil);
}

- (void)testReduceSum
{
    Expression *sum = [[Sum alloc] initWithAugendAndAddend:[Money dollar:3] :[Money dollar:4]];
    Bank *bank = [[Bank alloc] init];
    Money *result = [bank reduce:sum :@"USD"];
    GHAssertTrue([[Money dollar:7] equals:result], nil);
}

- (void)testReduceMoney
{
    Bank *bank = [[Bank alloc] init];
    Money *result = [bank reduce:[Money dollar:1] :@"USD"];
    GHAssertTrue([[Money dollar:1] equals:result], nil);
}

/*
- (void)testReduceMoneyDifferentCurrency
{
    Bank *bank = [[Bank alloc] init];
    [bank addRate:@"CHF", @"USD", 2];
    Money *result = [bank reduce:[Money franc:2] :@"USD"];
    GHAssertTrue([[Money dollar:1] equals:result], nil);
}
 */

/*
- (void)testDifferentClassEquality
{
    Money *a = [[Money alloc] initWithAmountAndCurrency:10 :@"CHF"];
    Franc *b = [[Franc alloc] initWithAmountAndCurrency:10 :@"CHF"];
    GHAssertTrue([a equals:b], nil);
}
 */

@end
