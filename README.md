CALayer-DPUtils
===============

Utilities for CALayer in OS X and iOS.

## CALayer (FrameUtils)


```objective-c
- (CGFloat) width;
- (CGFloat) height;
- (CGFloat) top;
- (CGFloat) left;
- (CGSize) size;

- (void) setWidth: (CGFloat) width;
- (void) setHeight: (CGFloat) height;
- (void) setTop: (CGFloat) top;
- (void) setLeft: (CGFloat) left;

- (void) setSize: (CGSize) size;
```

## CALayer (ConstraintUtils)

```objective-c
- (void) removeConstraint: (CAConstraint *) constraint;
- (void) removeConstraints: (NSArray *) constraints;
- (void) removeConstraints; // Remove all constraints
```
