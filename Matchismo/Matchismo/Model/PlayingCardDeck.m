//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by xugg on 10/23/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface PlayingCardDeck()

@end

@implementation PlayingCardDeck

- (instancetype) init {
    self = [super init];
    
    //NSLog(@"PlayingCardDeck -- init -1");
    if (self) {
        //NSLog(@"PlayingCardDeck -- init -2");
        for (NSString *suit in [PlayingCard validSuits]) {
            //NSLog(@"PlayingCardDeck -- init -3");
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                //NSLog(@"PlayingCardDeck -- init -4");
                PlayingCard *card = [[PlayingCard alloc] init];
                //NSLog(@"PlayingCardDeck -- init -5");
                card.suit = suit;
                card.rank = rank;
                //NSLog(@"PlayingCardDeck -- init -6");
                [self addCard:card];
                //NSLog(@"PlayingCardDeck -- init -7");
            }
        }
        

    }
    
    return self;
}

@end
