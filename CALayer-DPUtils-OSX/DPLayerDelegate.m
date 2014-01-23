//
// Created by Dani Postigo on 1/20/14.
// Copyright (c) 2014 Elastic Creative. All rights reserved.
//

#import "DPLayerDelegate.h"

@implementation DPLayerDelegate

+ (DPLayerDelegate *) sharedDelegate {
    static DPLayerDelegate *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}


- (id <CAAction>) actionForLayer: (CALayer *) layer forKey: (NSString *) event {
    return (id) [NSNull null]; // disable all implicit animations
}

@end