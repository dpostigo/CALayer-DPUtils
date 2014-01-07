//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer (ConstraintGetters)

- (CAConstraint *) superConstraintWithAttribute: (CAConstraintAttribute) attribute attribute: (CAConstraintAttribute) sourceAttribute;

- (CAConstraint *) constraintWithAttribute: (CAConstraintAttribute) attribute attribute: (CAConstraintAttribute) sourceAttribute sourceName: (NSString *) sourceName;
@end