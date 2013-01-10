#import <Foundation/Foundation.h>
 
#import "Person.h"

@implementation Person
  @synthesize name;
 
  - (void)sayHello {
    printf("Hello, my name is %s!\n", [self name]);
  }
@end
