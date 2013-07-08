//
//  UIApplication+NetworkActivity.m
//  Shield
//
//  Created by Maciej Swic on 2013-04-29.
//  Released under the MIT license.
//

#import "UIApplication+NetworkActivity.h"

@implementation UIApplication (NetworkActivity)

static NSInteger networkOperationCount;

+ (void)startNetworkActivity {
    networkOperationCount++;
    [[UIApplication sharedApplication] updateNetworkActivityIndixator];
}

+ (void)finishNetworkActivity {
    networkOperationCount--;
    [[UIApplication sharedApplication] updateNetworkActivityIndixator];
}

- (void)updateNetworkActivityIndixator {
    [self setNetworkActivityIndicatorVisible:(networkOperationCount > 0 ? TRUE : FALSE)];
}

@end
