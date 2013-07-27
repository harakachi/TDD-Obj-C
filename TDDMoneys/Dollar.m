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
    if([super init])
    {
        _amount = 10;
    }
    return self;
}

- (void)times:(int)multiplier
{
    
}

@end

