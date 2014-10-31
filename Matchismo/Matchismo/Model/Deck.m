//
//  Deck.m
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (nonatomic, strong) NSMutableArray *cards; // of Card

@end

@implementation Deck

- (NSMutableArray *)cards {
    if (!_cards) {
        //NSLog(@"Deck -- get cards -2");
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void) addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        //NSLog(@"Deck -- addCard -1");
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

- (Card *) drawRandomCard {
    Card *randomCard = nil;
    
    //NSLog(@"1");
    if ([self.cards count]) {
        NSLog(@"Deck -- drawRandomCard - total card count:%d",[self.cards count]);
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    NSLog(@"Deck -- drawRandomCard - drawed card:%@",
          randomCard.contents);
    return randomCard;
}

@end
