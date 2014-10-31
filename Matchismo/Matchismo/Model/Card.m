//
//  Card.m
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

//@synthesize contents = _contents;
//
//- (NSString *)contents {
//    return _contents;
//}
//
//- (void)setContents:(NSString *)contents {
//    _contents = contents;
//}

- (int) match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([self.contents isEqualToString:card.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end