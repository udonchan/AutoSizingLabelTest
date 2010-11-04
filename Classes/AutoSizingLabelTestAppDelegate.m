//
//  AutoSizingLabelTestAppDelegate.m
//  AutoSizingLabelTest
//

#import "AutoSizingLabelTestAppDelegate.h"

@implementation AutoSizingLabelTestAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    AutoSizingLabelTestViewController *vc = [[AutoSizingLabelTestViewController alloc] init];
    nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [window addSubview:nvc.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)dealloc {
    [nvc release];
    [window release];
    [super dealloc];
}


@end
