//
//  DemoWatchSpringboard.m
//  iOS8
//
//  Created by Jeremy Cope on 1/20/15.
//  Copyright (c) 2015 Emma Technologies, L.L.C. All rights reserved.
//

#import "DemoWatchSpringboard.h"
#import "ViewController.h"
#import "LMViewControllerView.h"

@interface DemoWatchSpringboard ()
@property ViewController* app;
@end

@implementation DemoWatchSpringboard

- (id)init{
    if (self = [super init]) {
        _app = [self createDemoApp];
    }
    return self;
}

-(ViewController*)createDemoApp{
    ViewController* app = [[ViewController alloc] init];
    [app setView:[[LMViewControllerView alloc] init]];
    return app;
}

#pragma mark - DemmoApp Delegate
-(NSString*)appName{
    return @"Watch Springboard";
}
-(NSString*)appDetail{
    return @"A prototype of what the Watch Springboard might look like on an iPhone.";
}
-(UIImage*)appImage{
    return [UIImage imageNamed:@"WatchSpringboardScreenShot.png"];
}
-(UIViewController*)mainViewController{
    return _app;
}
@end
