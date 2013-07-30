//
//  Dollar.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/27.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Dollar.h"

@implementation Dollar

- (id)initWithAmountAndCurrency:(int)amount :(NSString *)currency
{
    return [super initWithAmountAndCurrency:amount :currency];
}

- (id)times:(int)multiplier
{
    return [Money dollar:(_amount * multiplier)];
}

@end

