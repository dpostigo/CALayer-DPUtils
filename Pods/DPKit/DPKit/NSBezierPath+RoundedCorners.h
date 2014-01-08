//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.

// from AmberKit
//

#import <Foundation/Foundation.h>


enum {
    AFCornerLowerLeft	= 1 << 0,
    AFCornerLowerRight	= 1 << 1,
    AFCornerUpperLeft	= 1 << 2,
    AFCornerUpperRight	= 1 << 3,
};
typedef NSUInteger AFCornerOptions;


@interface NSBezierPath (RoundedCorners)

+ (NSBezierPath *) bezierPathWithRoundedRect: (NSRect) rect corners: (AFCornerOptions) corners radius: (CGFloat) radius;
- (void) appendBezierPathWithRoundedRect: (NSRect) rect corners: (AFCornerOptions) corners radius: (CGFloat) radius;
@end