//
//  UIView+Recursion.m
//  Shield
//
//  Created by Maciej Swic on 2013-04-25.
//  Released under the MIT license.
//

#import "UIView+Recursion.h"

@implementation UIView (Recursion)

- (BOOL)containedInClass:(Class)class {
    return [self isView:self containedInClass:class];
}

- (BOOL)isView:(UIView*)view containedInClass:(Class)class {
    if ([view respondsToSelector:@selector(superview)] && view.superview) {
        if ([view.superview isKindOfClass:class])
            return TRUE;
        else
            return [self isView:view.superview containedInClass:class];
    }
    
    return FALSE;
}

- (NSMutableArray*)allSubViews {
    NSMutableArray *arr=[[NSMutableArray alloc] init];
    [arr addObject:self];
    for (UIView *subview in self.subviews)
    {
        [arr addObjectsFromArray:(NSArray*)[subview allSubViews]];
    }
    return arr;
}

- (UIView*)subViewWithTag:(NSUInteger)tag {
    for (UIView* subView in [self allSubViews]) {
        if (subView.tag == tag)
            return subView;
    }
    
    return nil;
}

- (UIView*)subViewWithTag:(NSUInteger)tag kindOfClass:(Class)class {
    for (UIView* subView in [self allSubViews]) {
        if (subView.tag == tag && [subView isKindOfClass:class])
            return subView;
    }
    
    return nil;
}

@end
