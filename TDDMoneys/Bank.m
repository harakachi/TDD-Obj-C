//
//  Bank.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Bank.h"

@implementation Bank

- (Money *)reduce:(Expression *)source :(NSString *)to
{
    return [Money dollar:10];
}
@end
