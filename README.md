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

Remove constraints.

```objective-c
- (void) removeConstraint: (CAConstraint *) constraint;
- (void) removeConstraints: (NSArray *) constraints;
- (void) removeConstraints; // Remove all constraints
```


Constrain the layer's superlayer.


```objective-c
// Constrain all edges to the superlayer.
- (void) superConstrain;

// Constrain all edges to the superlayer with an optional inset.
- (void) superConstrainEdges: (CGFloat) offset;

// Constrains only the left and right edges
- (void) superConstrainEdgesH;
- (void) superConstrainEdgesH: (CGFloat) offset;

// Constrains only top and bottom
- (void) superConstrainEdgesV: (CGFloat) offset;

// Constrain the top edge of the child layer (minY) to its superlayer's top edge (minY)
- (void) superConstrainTopEdge;
- (void) superConstrainTopEdge: (CGFloat) offset;

// Constrain the child layer to its superlayer's bottom edge.
- (void) superConstrainBottomEdge;
- (void) superConstrainBottomEdge: (CGFloat) offset;
```