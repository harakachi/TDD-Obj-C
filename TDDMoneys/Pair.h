//
//  Pair.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pair : NSObject

@property (nonatomic) NSString *from;
@property (nonatomic) NSString *to;

- (Pair *)initWithFromAndTo:(NSString *)from :(NSString *)to;
- (BOOL)equals:(Pair *)object;
- (int)hashcode;

@end
