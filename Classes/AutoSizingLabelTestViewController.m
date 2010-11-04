//
//  AutoSizingLabelTestViewController.m
//  AutoSizingLabelTest
//

#import "AutoSizingLabelTestViewController.h"

@implementation AutoSizingLabelTestViewController

- (void) loadView {
    [super loadView];
    v = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    v.backgroundColor = [UIColor whiteColor];
    v.showsHorizontalScrollIndicator = NO;  
    v.showsVerticalScrollIndicator = NO;  
    v.scrollsToTop = YES;
    [self setView:v];

    UIFont *font = [UIFont fontWithName:@"Helvetica" size:12];
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"sample.txt" ofType:nil]];
    NSString *text = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    AutoSizingLabel *l = [[AutoSizingLabel alloc] initWithText:text andFont:font];
    [self.view addSubview:l];
    [text release];
    [font release];
    [l release];
    [v setContentSize:CGSizeMake(v.bounds.size.width, l.bounds.size.height)];

}

- (id) init {
    self = [super init];
    self.title = @"AutoSizingLabelTest";
    return self;
}

- (void) dealloc {
    [super dealloc];
    [v release];
}

@end
