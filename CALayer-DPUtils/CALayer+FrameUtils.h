//
// Created by Dani Postigo on 1/1/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer (FrameUtils)

- (void) setHeight: (CGFloat) height;
- (CGFloat) height;

- (void) setWidth: (CGFloat) width;
- (CGFloat) width;

- (void) setTop: (CGFloat) top;
- (CGFloat) top;

- (void) setLeft: (CGFloat) left;
- (CGFloat) left;

- (void) setSize: (CGSize) size;
- (CGSize) size;

@end