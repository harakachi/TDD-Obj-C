//
//  Money.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Money.h"
#import "Dollar.h"
#import "Franc.h"

@implementation Money

- (id)initWithAmountAndCurrency:(int)amount :(NSString *)currency
{
    self = [super init];
    if(self) {
        _amount   = amount;
        _currency = currency;
    }
    return self;
}

+ (id)dollar:(int)amount
{
    return [[Dollar alloc] initWithAmountAndCurrency:amount:@"USD"];
}
+ (id)franc:(int)amount
{
    return [[Franc alloc] initWithAmountAndCurrency:amount:@"CHF"];
}
- (id)currency
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
    
    NSString *classA = NSStringFromClass([self class]);
    NSString *classB = NSStringFromClass([money class]);
    return (_amount == [money amount]) && [classA isEqualToString:classB];
}

// abstruct method
- (id)times:(int)multiplier{
}

@end
