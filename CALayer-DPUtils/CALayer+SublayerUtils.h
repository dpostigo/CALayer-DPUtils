//
// Created by Dani Postigo on 1/4/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer (SublayerUtils)

- (CALayer *) sublayerWithName: (NSString *) name;
- (void) setSublayerCornerRadius: (CGFloat) radius;
- (void) setSublayerDelegate: (id) delegate;
@end