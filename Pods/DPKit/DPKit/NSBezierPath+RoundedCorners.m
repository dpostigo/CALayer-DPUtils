//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "NSBezierPath+RoundedCorners.h"

@implementation NSBezierPath (RoundedCorners)

+ (NSBezierPath *) bezierPathWithRoundedRect: (NSRect) rect corners: (AFCornerOptions) corners radius: (CGFloat) radius {
    NSBezierPath *path = [self bezierPath];
    [path appendBezierPathWithRoundedRect: rect corners: corners radius: radius];
    return path;
}

- (void) appendBezierPathWithRoundedRect: (NSRect) rect corners: (AFCornerOptions) corners radius: (CGFloat) radius {
    BOOL flipped = [[NSGraphicsContext currentContext] isFlipped];

    if (flipped) {
        NSUInteger upperCorners = (corners & (AFCornerUpperLeft | AFCornerUpperRight));

        corners = corners << 2;
        corners |= (upperCorners >> 2);

        corners &= (AFCornerUpperLeft | AFCornerUpperRight | AFCornerLowerLeft | AFCornerLowerRight);
    }

    [self moveToPoint: NSMakePoint(NSMidX(rect), NSMinY(rect))];

    radius = MIN(radius, MIN(NSWidth(rect), NSHeight(rect)) / 2.0);

    if ((corners & AFCornerLowerRight) == AFCornerLowerRight)
        [self appendBezierPathWithArcFromPoint: NSMakePoint(NSMaxX(rect), NSMinY(rect)) toPoint: NSMakePoint(NSMaxX(rect), NSMidY(rect)) radius: radius];
    else {
        [self lineToPoint: NSMakePoint(NSMaxX(rect), NSMinY(rect))];
        [self lineToPoint: NSMakePoint(NSMaxX(rect), NSMidY(rect))];
    }

    if ((corners & AFCornerUpperRight) == AFCornerUpperRight)
        [self appendBezierPathWithArcFromPoint: NSMakePoint(NSMaxX(rect), NSMaxY(rect)) toPoint: NSMakePoint(NSMidX(rect), NSMaxY(rect)) radius: radius];
    else {
        [self lineToPoint: NSMakePoint(NSMaxX(rect), NSMaxY(rect))];
        [self lineToPoint: NSMakePoint(NSMidX(rect), NSMaxY(rect))];
    }

    if ((corners & AFCornerUpperLeft) == AFCornerUpperLeft)
        [self appendBezierPathWithArcFromPoint: NSMakePoint(NSMinX(rect), NSMaxY(rect)) toPoint: NSMakePoint(NSMinX(rect), NSMidY(rect)) radius: radius];
    else {
        [self lineToPoint: NSMakePoint(NSMinX(rect), NSMaxY(rect))];
        [self lineToPoint: NSMakePoint(NSMinX(rect), NSMidY(rect))];
    }

    if ((corners & AFCornerLowerLeft) == AFCornerLowerLeft)
        [self appendBezierPathWithArcFromPoint: NSMakePoint(NSMinX(rect), NSMinY(rect)) toPoint: NSMakePoint(NSMidX(rect), NSMinY(rect)) radius: radius];
    else
        [self lineToPoint: NSMakePoint(NSMinX(rect), NSMinY(rect))];
}

@end