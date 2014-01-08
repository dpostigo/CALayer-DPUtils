//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CARoundedShapeLayer.h"
#import "NSBezierPath+DPKit.h"

@implementation CARoundedShapeLayer

@synthesize corners;
@synthesize radius;

- (id) init {
    self = [super init];
    if (self) {
        corners = AFCornerUpperLeft;
    }

    return self;
}

- (void) setFrame: (CGRect) frame {
    [super setFrame: frame];
    if (radius > 0) {
        NSBezierPath *bezierPath = [NSBezierPath bezierPathWithRoundedRect: self.bounds corners: corners radius: radius];
        self.path = bezierPath.quartzPath;
    }
}


@end