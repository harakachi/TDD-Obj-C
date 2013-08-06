//
//  Sum.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Sum : Expression
{
    Money *_augend;
    Money *_addend;
}

- (Sum *)initWithAugendAndAddend:(Money *)augend :(Money *)addend;
- (Money *)reduce:(NSString *)to;
- (Money *)augend;
- (Money *)addend;
@end
