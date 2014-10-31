//
//  Card.h
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import <Foundation/Foundation.h> // equals @impart Foundation;

@interface Card : NSObject

@property (strong) NSString *contents;

//@property (nonatomic) BOOL chosen; // Primitive type are not stored in heap, strong/weak is noneeded
//@property (nonatomic) BOOL matched;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards; // 0 means no match, higher number means a better match

@end