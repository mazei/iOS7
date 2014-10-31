//
//  ViewController.h
//  Matchismo
//
//  Created by xugg on 10/22/14.
//  Copyright (c) 2014 csst. All rights reserved.
//
// Abstract class. Must implement mehtods as descributed blew.

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface ViewController : UIViewController



// protected, for subclass
- (Deck *) createDeck; // abstract

@end

