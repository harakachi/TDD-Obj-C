//
//  Money.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Money.h"
#import "Sum.h"

@implementation Money

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
    return [[Money alloc] initWithAmountAndCurrency:amount :@"USD"];
}
+ (Money *)franc:(int)amount
{
    return [[Money alloc] initWithAmountAndCurrency:amount :@"CHF"];
}
- (Expression *)plus:(Money *)addend
{
    return [[Sum alloc] initWithAugendAndAddend:self :addend];
}
- (Money *)reduce:(NSString *)to
{
    return self;
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

- (Money *)times:(int)multiplier{
    return [[Money alloc] initWithAmountAndCurrency:(_amount * multiplier) :_currency];
}

@end
