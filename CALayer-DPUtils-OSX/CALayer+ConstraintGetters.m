//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "CALayer+ConstraintGetters.h"

@implementation CALayer (ConstraintGetters)

- (CAConstraint *) superConstraintWithAttribute: (CAConstraintAttribute) attribute attribute: (CAConstraintAttribute) sourceAttribute {
    return [self constraintWithAttribute: attribute attribute: sourceAttribute sourceName: @"superlayer"];
}

- (CAConstraint *) constraintWithAttribute: (CAConstraintAttribute) attribute attribute: (CAConstraintAttribute) sourceAttribute sourceName: (NSString *) sourceName {
    CAConstraint *ret = nil;
    NSArray *constraints = [NSArray arrayWithArray: self.constraints];

    for (CAConstraint *constraint in constraints) {
        if (constraint.attribute == attribute && constraint.sourceAttribute == sourceAttribute) {
            if (sourceName == nil || (sourceName && sourceName == constraint.sourceName)) {
                ret = constraint;
                break;
            }
        }
    }

    return ret;
}


@end