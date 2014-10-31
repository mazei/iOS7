//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by xugg on 10/27/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController()

@end

@implementation PlayingCardGameViewController

- (Deck *) createDeck {
    return [[PlayingCardDeck alloc] init]; 
}

@end
