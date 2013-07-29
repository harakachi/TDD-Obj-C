//
//  Money.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Money.h"

@implementation Money

- (BOOL)equals:(id)object
{
    Money *money = (Money *)object;
    return [self amount] == [money amount];
}

@end
