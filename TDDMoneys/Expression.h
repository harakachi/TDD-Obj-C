//
//  Expression.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Money;

@interface Expression : NSObject

- (Money *)reduce:(NSString *)to;

@end
