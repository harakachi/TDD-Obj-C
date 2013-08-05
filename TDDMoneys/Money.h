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

- (id)initWithAmountAndCurrency:(int)amount :(NSString *)currency;
- (id)currency;
- (id)plus:(id)object;
- (int)amount;
- (BOOL)equals:(id)object;

+ (id)dollar:(int)amount;
+ (id)franc:(int)amount;


// abstruct method
- (id)times:(int)multiplier;

@end
