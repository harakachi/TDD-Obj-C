//
//  Sum.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Sum : NSObject {
    Money *_augend;
    Money *_addend;
}

- (id)initWithAugendAndAddend:(id)augend :(id)addend;
- (id)reduce:(id)to;
- (id)augend;
- (id)addend;

@end
