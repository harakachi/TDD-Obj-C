//
//  Money.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"

@interface Money : Expression
{
    NSString *_currency;
    int       _amount;
}

- (id)initWithAmountAndCurrency:(int)amount :(NSString *)currency;
- (id)currency;
- (int)amount;
- (id)plus:(id)addend;
- (id)times:(int)multiplier;
- (BOOL)equals:(id)object;

+ (id)dollar:(int)amount;
+ (id)franc:(int)amount;

@end
