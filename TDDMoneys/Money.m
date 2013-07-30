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

+ (id)dollar:(int)amount
{
    return [[Dollar alloc] initWithAmount:amount];
}
+ (id)franc:(int)amount
{
    return [[Franc alloc] initWithAmount:amount];
}

- (BOOL)equals:(id)object
{
    Money *money = object;
    
    NSString *classA = NSStringFromClass([self class]);
    NSString *classB = NSStringFromClass([money class]);
    return ([self amount] == [money amount]) && [classA isEqualToString:classB];
}

// abstruct method
- (id)times:(int)multiplier{
}


@end
