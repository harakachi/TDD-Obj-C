//
//  Sum.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"
#import "Expression.h"

@interface Sum : Expression
{
    Money *_augend;
    Money *_addend;
}

- (Expression *)initWithAugendAndAddend:(id)augend :(id)addend;
- (Money *)augend;
- (Money *)addend;

@end
