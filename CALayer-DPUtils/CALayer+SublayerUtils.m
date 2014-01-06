//
// Created by Dani Postigo on 1/4/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CALayer+SublayerUtils.h"

@implementation CALayer (SublayerUtils)

- (CALayer *) sublayerWithName: (NSString *) name {
    CALayer *ret = nil;
    NSArray *sublayers = self.sublayers;

    for (CALayer *layer in sublayers) {
        if ([layer.name isEqualToString: name]) {
            ret = layer;
            break;
        }
    }
    return ret;
}


- (void) setSublayerCornerRadius: (CGFloat) radius {
    NSArray *sublayers = self.sublayers;
    for (CALayer *layer in sublayers) {
        layer.cornerRadius = radius;
    }
}


- (void) setSublayerDelegate: (id) delegate {
    NSArray *sublayers = self.sublayers;
    for (CALayer *layer in sublayers) {
        layer.delegate = delegate;
    }
}


@end