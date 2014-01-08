//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "NSBezierPath+RoundedCorners.h"

@interface CARoundedShapeLayer : CAShapeLayer {
    AFCornerOptions corners;
    CGFloat radius;
}

@property(nonatomic) AFCornerOptions corners;
@property(nonatomic) CGFloat radius;
@end