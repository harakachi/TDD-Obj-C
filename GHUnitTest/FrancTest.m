//
//  FrancTest.m
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/07/29.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "FrancTest.h"
#import "Franc.h"

@implementation FrancTest

- (void)testMultiplication
{
    Franc *five = [[Franc alloc] initWithAmount:5];
    GHAssertEquals([[[Franc alloc] initWithAmount:10] amount], [[five times:2] amount], nil);
    GHAssertEquals([[[Franc alloc] initWithAmount:15] amount], [[five times:3] amount], nil);
}

@end
