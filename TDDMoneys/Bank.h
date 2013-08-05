//
//  Bank.h
//  TDDMoneys
//
//  Created by 原田 勝信 on 2013/08/05.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject
{
    NSMutableDictionary *_rates;
}

- (id)reduce:(id)source :(NSString *)to;
- (int)rate:(NSString *)from :(NSString *)to;
- (void)addRate:(NSString *)from :(NSString *)to :(NSNumber *)rate;
@end

