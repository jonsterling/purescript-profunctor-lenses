## Module Data.Lens.Traversal

This module defines functions for working with traversals.

#### `traverse`

``` purescript
traverse :: forall t a b. (Traversable t) => Traversal (t a) (t b) a b
```

Create a `Traversal` which traverses the elements of a `Traversable` functor.

