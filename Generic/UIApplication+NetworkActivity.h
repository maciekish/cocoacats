//
//  UIApplication+NetworkActivity.h
//  Shield
//
//  Created by Maciej Swic on 2013-04-29.
//  Released under the MIT license.
//

#import <UIKit/UIKit.h>

@interface UIApplication (NetworkActivity)

+ (void)startNetworkActivity;
+ (void)finishNetworkActivity;

- (void)updateNetworkActivityIndixator;

@end
