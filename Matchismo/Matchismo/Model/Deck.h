//
//  Deck.h
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;
- (Card *) drawRandomCard;

@end