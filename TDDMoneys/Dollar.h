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

//@property (nonatomic) int amount;

- (id)initWithAmount:(int)amount;
- (id)times:(int)multiplier;

@end
