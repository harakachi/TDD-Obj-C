//
//  Bank.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Bank.h"
#import "Money.h"
#import "Sum.h"

@implementation Bank

- (id)reduce:(id)source :(id)to
{
    return [source reduce:to];
}
@end

