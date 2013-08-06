//
//  Sum.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Sum.h"

@implementation Sum

- (Sum *)initWithAugendAndAddend:(Money *)augend :(Money *)addend
{
    self = [super init];
    if (self) {
        _augend = augend;
        _addend = addend;
    }
    return self;
}
- (Money *)reduce:(NSString *)to
{
    int amount = [_augend amount] + [_addend amount];
    return [[Money alloc] initWithAmountAndCurrency:amount :to];
}
- (Money *)augend
{
    return _augend;
}
- (Money *)addend
{
    return _addend;
}
@end