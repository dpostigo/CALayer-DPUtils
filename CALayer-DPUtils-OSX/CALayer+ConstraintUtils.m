//
// Created by Dani Postigo on 1/1/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CALayer+ConstraintUtils.h"

@implementation CALayer (ConstraintUtils)

- (void) removeConstraint: (CAConstraint *) constraint {
    NSMutableArray *constraints = [NSMutableArray arrayWithArray: self.constraints];
    [constraints removeObject: constraint];
    [self setConstraints: constraints];
}


- (void) removeConstraints {
    [self setConstraints: [NSArray array]];
}

- (void) removeConstraints: (NSArray *) constraints {
    NSMutableArray *current = [NSMutableArray arrayWithArray: self.constraints];
    for (CAConstraint *constraint in constraints) {
        if ([current containsObject: constraint]) {
            [current removeObject: constraint];
        }
    }
    [self setConstraints: current];
}

- (void) superConstrain {
    [self superConstrainEdges: 0];
    if (self.superlayer) self.superlayer.layoutManager = [CAConstraintLayoutManager layoutManager];
}


#pragma mark SuperConstrain edges

- (void) superConstrainEdgesH {
    [self superConstrainEdgesH: 0];
}


- (void) superConstrainEdgesH: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinX offset: offset];
    [self superConstrain: kCAConstraintMaxX offset: -offset];
}

- (void) superConstrainEdgesV {
    [self superConstrainEdgesV: 0];
}

- (void) superConstrainEdgesV: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinY offset: offset];
    [self superConstrain: kCAConstraintMaxY offset: -offset];
}

- (void) superConstrainEdges: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinX offset: offset];
    [self superConstrain: kCAConstraintMaxX offset: -offset];
    [self superConstrain: kCAConstraintMinY offset: offset];
    [self superConstrain: kCAConstraintMaxY offset: -offset];
}


- (void) superConstrain: (CAConstraintAttribute) edge {
    [self superConstrain: edge offset: 0];
}



#pragma mark SuperConstrain explicit edges

- (void) superConstrainTopEdge {
    [self superConstrain: kCAConstraintMinY to: kCAConstraintMinY offset: 0];
}


- (void) superConstrainTopEdge: (CGFloat) offset {
    [self superConstrain: kCAConstraintMinY to: kCAConstraintMinY offset: offset];
}

- (void) superConstrainBottomEdge {
    [self superConstrainBottomEdge: 0];

}

- (void) superConstrainBottomEdge: (CGFloat) offset {
    [self superConstrain: kCAConstraintMaxY to: kCAConstraintMaxY offset: offset];
}


- (void) superConstrain: (CAConstraintAttribute) edge offset: (CGFloat) offset {
    [self superConstrain: edge to: edge offset: offset];
}


- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge {
    [self superConstrain: subviewEdge to: superlayerEdge offset: 0];
}


#pragma mark Do-er methods

- (void) superConstrain: (CAConstraintAttribute) subviewEdge to: (CAConstraintAttribute) superlayerEdge offset: (CGFloat) offset {
    [self addConstraint: [CAConstraint constraintWithAttribute: subviewEdge relativeTo: @"superlayer" attribute: superlayerEdge offset: offset]];
}



#pragma mark LayoutManager

- (void) setDefaultLayoutManager {
    self.layoutManager = [CAConstraintLayoutManager layoutManager];
}

- (void) makeSuperlayer {
    [self setDefaultLayoutManager];
}
@end