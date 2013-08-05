//
//  Bank.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Bank.h"
#import "Expression.h"

@implementation Bank

- (id)reduce:(id)source :(NSString *)to
{
    return [source reduce:self :to];
}

- (int)rate:(NSString *)from :(NSString *)to
{
    return ([from isEqualToString:@"CHF"] && [to isEqualToString:@"USD"]) ? 2 : 1;
}
@end

