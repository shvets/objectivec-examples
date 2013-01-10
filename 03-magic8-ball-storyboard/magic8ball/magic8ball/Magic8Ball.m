//
// Created by oshvets on 1/8/13.
//

#import "Magic8Ball.h"

@implementation Magic8Ball {
  NSArray *array;
}

- (id)init {
  self = [super init];

  if(self) {
    array = [self loadAnswers];
  }

  return self;
}

- (NSArray *)loadAnswers {
  NSString *answersFile = [[NSBundle mainBundle] pathForResource:@"answers" ofType:@"json"];

  NSError *nsError;

  NSData *data = [[NSData alloc] initWithContentsOfFile:answersFile options:NSDataReadingUncached error:&nsError];

  NSDictionary *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&nsError];

  if (!jsonArray) {
    NSLog(@"Error: %@", nsError);

    return self.defaultAnswers;
  }

  return [jsonArray objectForKey:@"answers"];
}

- (NSString *)randAnswer {
  unsigned int position = (arc4random() % array.count);

  return array[position];
}

- (NSArray *)defaultAnswers {
  return [NSArray arrayWithObjects:@"Yes", @"No", @"Maybe", @"Don't care", nil];
}

@end