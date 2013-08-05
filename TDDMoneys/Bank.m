//
//  Bank.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Expression.h"
#import "Bank.h"

@implementation Bank

- (Bank *)init
{
    if([super init]) {
        _rates = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (id)reduce:(id)source :(NSString *)to
{
    return [source reduce:self :to];
}

- (int)rate:(NSString *)from :(NSString *)to
{
    if ([from isEqualToString:to]) {
        return 1;
    }
    
    NSNumber *rate = [_rates objectForKey:[from stringByAppendingString:to]];
    return [rate intValue];
}

- (void)addRate:(NSString *)from :(NSString *)to :(NSNumber *)rate
{
    [_rates setObject:rate forKey:[from stringByAppendingString:to]];
}
@end

