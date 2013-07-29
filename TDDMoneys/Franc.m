//
//  Franc.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Franc.h"

@implementation Franc

- (id)initWithAmount:(int)amount
{
    self = [super init];
    if(self) {
        _amount = amount;
    }
    return self;
}

- (id)times:(int)multiplier
{
    return [[Franc alloc] initWithAmount:(_amount * multiplier)];
}

@end
