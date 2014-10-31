//
//  PlayingCardView.h
//  SuperCard
//
//  Created by xugg on 10/28/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//@import UIKit;


@interface PlayingCardView : UIView {

    int a;
}

//public
@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end