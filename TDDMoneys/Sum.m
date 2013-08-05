//
//  Sum.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Sum.h"

@implementation Sum

// Expression : override
- (id)reduce:(id)to
{
    int amount = [_augend amount] + [_addend amount];
    return [[Money alloc] initWithAmountAndCurrency:amount :to];
}

- (id)initWithAugendAndAddend:(id)augend :(id)addend
{
    _augend = augend;
    _addend = addend;
    return self;
}

- (id)augend
{
    return _augend;
}

- (id)addend
{
    return _addend;
}
@end
