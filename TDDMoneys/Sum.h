//
//  Sum.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"


@interface Sum : Expression
{
    Expression *_augend;
    Expression *_addend;
}

- (Expression *)initWithAugendAndAddend:(Expression *)augend :(Expression *)addend;
- (Expression *)augend;
- (Expression *)addend;
- (Expression *)plus:(Expression *)addend;
- (Expression *)times:(int)multiplier;

@end
