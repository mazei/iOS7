//
//  ViewController.m
//  SuperCard
//
//  Created by xugg on 10/28/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    PlayingCardView *pcv = [[PlayingCardView alloc] init];
//    pcv.rank = 1;
//    
//    NSLog(@"rank is %lu", (unsigned long)pcv.rank);
    
    self.playingCardView.suit = @"♥️";
    self.playingCardView.rank = 13;
}

@end
