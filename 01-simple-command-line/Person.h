#import <Foundation/Foundation.h>

@interface Person : NSObject {
    @private char *name;
  }

  @property (readwrite, assign) char *name;
  
  - (void)sayHello;
@end
 