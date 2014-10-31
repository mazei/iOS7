//
//  TextStatsViewController.m
//  Attributor
//
//  Created by xugg on 10/27/14.
//  Copyright (c) 2014 csst. All rights reserved.
//

#import "TextStatsViewController.h"

@interface TextStatsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorfulCharactersLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlinedCharactersLabel;
@end

@implementation TextStatsViewController

- (void) setTextToAnalyze:(NSAttributedString *)textToAnalyze {
    _textToAnalyze = textToAnalyze;
    if (self.view.window) [self updateUI];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateUI];
}

//- (void) viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    self.textToAnalyze = [[NSAttributedString alloc] initWithString:@"test" attributes:@{
//                                                                                         NSForegroundColorAttributeName : [UIColor greenColor],
//                                                                                         NSStrokeColorAttributeName : @-3}];
//}

- (void) updateUI {
    [self.colorfulCharactersLabel setText:[NSString stringWithFormat:@"%lu colorful characters",
                                           (unsigned long)[[self charactersWithAttribute:NSForegroundColorAttributeName] length]]];
    [self.outlinedCharactersLabel setText:[NSString stringWithFormat:@"%lu outlined characters",
                                           (unsigned long)[[self charactersWithAttribute:NSStrokeColorAttributeName] length]]];
}

- (NSAttributedString *) charactersWithAttribute:(NSString *)attributeName {
    NSMutableAttributedString *characters = [[NSMutableAttributedString alloc] init];
    
    int index = 0;
    while (index < [self.textToAnalyze length]) {
        NSRange range;
        //[self.textToAnalyze attribute]
        id value = [self.textToAnalyze attribute:attributeName atIndex:index effectiveRange:&range];
        if (value) {
            [characters appendAttributedString:[self.textToAnalyze attributedSubstringFromRange:range]];
            index = (int)(range.location + range.length);
        } else {
            index++;
        }
    }
    
    return characters;
}

@end
