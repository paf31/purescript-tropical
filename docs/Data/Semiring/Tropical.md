## Module Data.Semiring.Tropical

This module defines the _tropical semiring_.

#### `Tropical`

``` purescript
newtype Tropical
  = Tropical Number
```

The tropical semiring is given by `(R ∪ {∞}, min, +)`, but we use `Number` as
an approximation to `R ∪ {∞}`.

##### Instances
``` purescript
Semiring Tropical
```

#### `runTropical`

``` purescript
runTropical :: Tropical -> Number
```

Unpack the underlying `Number`.


