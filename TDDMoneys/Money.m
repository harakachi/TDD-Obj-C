//
//  Money.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Money.h"
#import "Sum.h"
#import "Bank.h"

@implementation Money

// Expression : override
- (Money *)reduce:(Bank *)bank :(NSString *)to
{
    int rate = [bank rate:_currency :to];
    return [[Money alloc] initWithAmountAndCurrency:(_amount / rate) :to];
}

- (Expression *)plus:(Expression *)addend
{
    return [[Sum alloc] initWithAugendAndAddend:self :addend];
}

- (Money *)initWithAmountAndCurrency:(int)amount :(NSString *)currency
{
    self = [super init];
    if(self) {
        _amount   = amount;
        _currency = currency;
    }
    return self;
}

+ (Money *)dollar:(int)amount
{
    return [[Money alloc] initWithAmountAndCurrency:amount:@"USD"];
}
+ (Money *)franc:(int)amount
{
    return [[Money alloc] initWithAmountAndCurrency:amount:@"CHF"];
}
- (NSString *)currency
{
    return _currency;
}
- (int)amount
{
    return _amount;
}

- (BOOL)equals:(id)object
{
    Money *money = object;
    return (_amount == [money amount]) && (_currency == [money currency]);
}

- (Expression *)times:(int)multiplier{
    return [[Money alloc] initWithAmountAndCurrency:_amount * multiplier :_currency];
}

@end
