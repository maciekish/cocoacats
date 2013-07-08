//
//  UIView+Recursion.h
//  Shield
//
//  Created by Maciej Swic on 2013-04-25.
//  Released under the MIT license.
//

#import <UIKit/UIKit.h>

@interface UIView (Recursion)

- (BOOL)containedInClass:(Class)class;
- (NSMutableArray*)allSubViews;
- (UIView*)subViewWithTag:(NSUInteger)tag;
- (UIView*)subViewWithTag:(NSUInteger)tag kindOfClass:(Class)class;

@end
