//
//  Dollar.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/27.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Dollar : Money

- (id)initWithAmountAndCurrency:(int)amount :(NSString *)currency;

@end
