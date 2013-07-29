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
        [self setAmount:amount];
    }
    return self;
}

- (id)times:(int)multiplier
{
    return [[Dollar alloc] initWithAmount:(_amount * multiplier)];
}

- (BOOL)equals:(id)object
{
    Dollar *dollar = object;
    return _amount == [dollar amount];
}

@end

