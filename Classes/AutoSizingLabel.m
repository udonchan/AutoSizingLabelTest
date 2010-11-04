//
//  AutoSizingLabel.m
//  AutoSizingLabelTest
//

#import "AutoSizingLabel.h"

@implementation AutoSizingLabel

- (id) initWithText:(NSString *)text andFont:(UIFont *)font {
    CGSize size = [text sizeWithFont:font
                   constrainedToSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width, 10000) 
                       lineBreakMode:UILineBreakModeTailTruncation];
    self = [super initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    [self setNumberOfLines:0];
    [self setFont:font];
    [self setText:text];
    return self;
}    
@end
