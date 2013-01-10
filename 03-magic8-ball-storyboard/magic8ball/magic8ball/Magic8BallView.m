//
// Created by oshvets on 1/10/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Magic8BallView.h"


@implementation Magic8BallView {

}

@synthesize questionLabel, answerLabel;

- (void)configure {
  UIImage *image = [UIImage imageNamed:@"background.png"];

  [self setImage:image];

  [self.answerLabel setTextColor:[UIColor darkGrayColor]];
  [self.answerLabel setFont:[UIFont boldSystemFontOfSize:34]];
  [self.answerLabel setTextAlignment:NSTextAlignmentCenter];

  [self.questionLabel setTextColor:[UIColor darkGrayColor]];
  [self.questionLabel setFont:[UIFont boldSystemFontOfSize:34]];
  [self.questionLabel setTextAlignment:NSTextAlignmentCenter];
}

@end