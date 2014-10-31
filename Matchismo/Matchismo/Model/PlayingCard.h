//
//  PlayingCard.h
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end