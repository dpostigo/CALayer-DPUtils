//
// Created by Dani Postigo on 1/4/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CALayer+SublayerUtils.h"

@implementation CALayer (SublayerUtils)

- (void) removeAllSublayers {

    NSArray *layers = [NSArray arrayWithArray: self.sublayers];
    for (CALayer *layer in layers) {
        [layer removeFromSuperlayer];
    }
}

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


- (void) setSublayerSpeed: (CGFloat) speed {

    NSArray *sublayers = self.sublayers;
    [sublayers enumerateObjectsUsingBlock: ^(CALayer *sublayer, NSUInteger index, BOOL *stop) {
        sublayer.speed = speed;
    }];

}

@end