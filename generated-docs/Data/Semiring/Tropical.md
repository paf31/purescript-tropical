## Module Data.Semiring.Tropical

This module defines the _tropical semiring_.

#### `Tropical`

``` purescript
newtype Tropical
  = Tropical Number
```

The tropical semiring is given by `(ℝ ∪ {∞}, min, +)`, but we use `Number` as
an approximation to `ℝ ∪ {∞}`.

##### Instances
``` purescript
Newtype Tropical _
Eq Tropical
Ord Tropical
Show Tropical
Semiring Tropical
```


