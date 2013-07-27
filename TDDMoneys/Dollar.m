//
//  Dollar.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/27.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Dollar.h"

@implementation Dollar

- (id)initWithAmount:(int)amount
{
    self = [super init];
    if(self) {
        _amount = amount;
    }
    return self;
}

- (void)times:(int)multiplier
{
    _amount *= multiplier;
}

@end

