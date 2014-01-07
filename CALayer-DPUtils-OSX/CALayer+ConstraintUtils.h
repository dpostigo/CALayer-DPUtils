//
// Created by Dani Postigo on 1/1/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer (ConstraintUtils)

- (void) removeConstraints;
- (void) removeConstraint: (CAConstraint *) constraint;
- (void) removeConstraints: (NSArray *) constraints;

- (void) superConstrain;

- (void) superConstrainEdges: (CGFloat) offset;
- (void) superConstrainEdgesH;
- (void) superConstrainEdgesH: (CGFloat) offset;
- (void) superConstrainEdgesV;
- (void) superConstrainEdgesV: (CGFloat) offset;

- (void) superConstrainTopEdge;
- (void) superConstrainTopEdge: (CGFloat) offset;
- (void) superConstrainBottomEdge;
- (void) superConstrainBottomEdge: (CGFloat) offset;

- (void) superConstrain: (CAConstraintAttribute) edge;

- (void) superConstrain: (CAConstraintAttribute) edge offset: (CGFloat) offset;
- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge;
- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge offset: (CGFloat) offset;

- (void) setDefaultLayoutManager;
- (void) makeSuperlayer;

@end