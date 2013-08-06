//
//  Money.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject
{
    NSString *_currency;
    int       _amount;
}

- (Money *)initWithAmountAndCurrency:(int)amount :(NSString *)currency;
- (Money *)times:(int)multiplier;
- (int)amount;
- (NSString *)currency;
- (BOOL)equals:(id)object;

+ (Money *)dollar:(int)amount;
+ (Money *)franc:(int)amount;

@end
