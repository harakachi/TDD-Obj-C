//
//  Expression.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

@interface Expression : NSObject

//abstruct method
- (id)reduce:(Bank *)bank :(NSString *)to;
- (Expression *)plus:(Expression *)addend;
- (Expression *)times:(int)multiplier;

@end
