//
//  Pair.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Pair.h"

@implementation Pair

- (Pair *)initWithFromAndTo:(NSString *)from :(NSString *)to
{
    self = [super init];
    if(self) {
        _from = from;
        _to   = to;
    }
    return self;
}
- (BOOL)equals:(Pair *)object
{
    return ([_from isEqualToString:[object from]]) && ([_to isEqualToString:[object to]]);
}
- (int)hashcode
{
    return 0;
}
@end
