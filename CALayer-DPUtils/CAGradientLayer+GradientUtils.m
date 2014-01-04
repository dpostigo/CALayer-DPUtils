//
// Created by Dani Postigo on 1/4/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CAGradientLayer+GradientUtils.h"

@implementation CAGradientLayer (GradientUtils)

- (NSArray *) gradientArray: (NSArray *) array {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    for (NSColor *color in array) {
        [ret addObject: (__bridge id) color.CGColor];
    }
    return ret;
}
@end