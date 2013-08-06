//
//  Sum.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Sum.h"
#import "Money.h"

@implementation Sum

// Expression : override
- (id)reduce:(Bank *)bank :(NSString *)to
{
    int amount = [[_augend reduce:bank :to] amount] +
                 [[_addend reduce:bank :to] amount];
    return [[Money alloc] initWithAmountAndCurrency:amount :to];
}

- (Expression *)initWithAugendAndAddend:(Expression *)augend :(Expression *)addend
{
    self = [super init];
    if(self) {
        _augend = augend;
        _addend = addend;
    }
    return self;
}

- (Expression *)augend
{
    return _augend;
}

- (Expression *)addend
{
    return _addend;
}
- (Expression *)plus:(Expression *)addend
{
    return nil;
}
@end
