//
//  MoneyTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "MoneyTest.h"
#import "Money.h"
#import "Dollar.h"
#import "Franc.h"

@implementation MoneyTest

- (void) testEquality
{
    GHAssertTrue( [[[Dollar alloc] initWithAmount:5] equals:[[Dollar alloc] initWithAmount:5]], nil);
    GHAssertFalse([[[Dollar alloc] initWithAmount:5] equals:[[Dollar alloc] initWithAmount:6]], nil);
    
    GHAssertTrue( [[[Franc alloc] initWithAmount:5] equals:[[Franc alloc] initWithAmount:5]], nil);
    GHAssertFalse([[[Franc alloc] initWithAmount:5] equals:[[Franc alloc] initWithAmount:6]], nil);
    
    GHAssertFalse([[[Franc alloc] initWithAmount:5] equals:[[Dollar alloc] initWithAmount:5]], nil);
}

@end
