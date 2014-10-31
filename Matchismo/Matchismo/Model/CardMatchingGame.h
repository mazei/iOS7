//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by xugg on 10/24/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

@property (nonatomic, readonly) NSInteger score;

// designed initializer
- (instancetype) initWithCardCount:(NSUInteger)count
                         usingDeck:(Deck *) deck;
- (void) chooseCardAtIndex:(NSUInteger)index;
- (Card *) cardAtIndex:(NSUInteger)index;

@end
