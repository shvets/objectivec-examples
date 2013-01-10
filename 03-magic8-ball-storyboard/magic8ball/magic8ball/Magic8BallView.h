//
// Created by oshvets on 1/10/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface Magic8BallView : UIImageView

- (void) configure;

@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

@end