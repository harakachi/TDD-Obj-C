//
//  Money.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject

@property (nonatomic) int amount;

+ (id)dollar:(int)amount;
+ (id)franc:(int)amount;

- (BOOL)equals:(id)object;

// abstruct method
- (id)times:(int)multiplier;

@end