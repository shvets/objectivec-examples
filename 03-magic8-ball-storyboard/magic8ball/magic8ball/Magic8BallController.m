//
// Created by oshvets on 1/8/13.
//

#import "Magic8BallController.h"
#import "Magic8Ball.h"
#import "Magic8BallView.h"
#import "AppDelegate.h"

@implementation Magic8BallController {
  Magic8Ball *model;
}

- (void)loadView {
  [super loadView];

  // view is instantiated from storyboard with controller
  Magic8BallView *myView = (Magic8BallView*)self.view;

  [myView configure];
  
  UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showAnswer:)];
  [self.view addGestureRecognizer:recognizer];
  [self.view setUserInteractionEnabled:YES];

  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveEvent:) name:@"myevent" object:nil];

  model = [[Magic8Ball alloc] init];
}

- (void)viewDidLoad {
  [super viewDidLoad];

  // how to access delegate
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

  NSLog(@"delegate: %@", appDelegate);
}

- (IBAction)showAnswer:(id)sender {
  [[((Magic8BallView *) self.view) answerLabel] setText:model.randAnswer];

  NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
  [userInfo setObject:@"test" forKey:@"mydata"];

  [[NSNotificationCenter defaultCenter] postNotificationName:@"myevent" object:sender userInfo:userInfo];
}

- (void)receiveEvent:(NSNotification *)notification {
  NSString *mydata = [[notification userInfo] valueForKey:@"mydata"];

  NSLog(@"got event %@", notification);
  NSLog(@"data: %@", mydata);
}

@end