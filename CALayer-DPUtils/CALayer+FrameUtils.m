//
// Created by Dani Postigo on 1/1/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CALayer+FrameUtils.h"

@implementation CALayer (FrameUtils)

- (void) setHeight: (CGFloat) height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat) height {
    return self.frame.size.height;
}


- (void) setWidth: (CGFloat) width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat) width {
    return self.frame.size.width;
}


- (void) setTop: (CGFloat) top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (CGFloat) top {
    return self.frame.origin.y;
}


- (void) setLeft: (CGFloat) left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (CGFloat) left {
    return self.frame.origin.x;
}

- (void) setSize: (CGSize) size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize) size {
    return self.frame.size;
}
@end