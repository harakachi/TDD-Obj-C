//
//  Dollar.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/27.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dollar : NSObject

@property (nonatomic) int amount;

- (id)initWithAmount:(int)amount;
- (id)times:(int)multiplier;
- (BOOL)equals:(id)object;

@end
