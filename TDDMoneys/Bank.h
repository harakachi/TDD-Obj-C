//
//  Bank.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Bank : NSObject

- (Money *)reduce:(Expression *)source :(NSString *)to;

@end
