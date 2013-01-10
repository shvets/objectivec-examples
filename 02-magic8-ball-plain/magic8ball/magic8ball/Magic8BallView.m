//
// Created by oshvets on 1/10/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Magic8BallView.h"


@implementation Magic8BallView {

}

@synthesize questionLabel, answerLabel;

//- (void)configure {
//  UIImage *image = [UIImage imageNamed:@"background.png"];
//
//  [self setImage:image];
//
//  [self.answerLabel setTextColor:[UIColor darkGrayColor]];
//  [self.answerLabel setFont:[UIFont boldSystemFontOfSize:34]];
//  [self.answerLabel setTextAlignment:NSTextAlignmentCenter];
//
//  [self.questionLabel setTextColor:[UIColor darkGrayColor]];
//  [self.questionLabel setFont:[UIFont boldSystemFontOfSize:34]];
//  [self.questionLabel setTextAlignment:NSTextAlignmentCenter];
//}
//

- (id)init {
  UIImage *image = [UIImage imageNamed:@"background.png"];

  self = [super initWithImage:image];

  if(self) {
    questionLabel = [self makeQuestionLabel];
    answerLabel = [self makeAnswerLabel];

    [self addSubview:questionLabel];
    [self addSubview:answerLabel];
  }

  return self;
}

- (UILabel *)makeQuestionLabel {
  CGRect labelFrame = CGRectMake(10, 20, 300, 80);

  UILabel *l = [[UILabel alloc] initWithFrame:labelFrame];

  [l setText:@"Tap for answer:"];
  [l setTextColor:[UIColor darkGrayColor]];
  [l setFont:[UIFont boldSystemFontOfSize:34]];
  [l setTextAlignment:NSTextAlignmentCenter];

  return l;
}

- (UILabel *)makeAnswerLabel {
  CGRect labelFrame = CGRectMake(10, 80, 300, 80);

  UILabel *l = [[UILabel alloc] initWithFrame:labelFrame];

  [l setText:@""];
  [l setTextColor:[UIColor darkGrayColor]];
  [l setFont:[UIFont boldSystemFontOfSize:34]];
  [l setTextAlignment:NSTextAlignmentCenter];

  return l;
}

@end