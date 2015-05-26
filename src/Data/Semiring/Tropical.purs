-- | This module defines the _tropical semiring_.

module Data.Semiring.Tropical where

import Math (min)
import Global (infinity)

-- | The tropical semiring is given by `(R ∪ {∞}, min, +)`, but we use `Number` as
-- | an approximation to `R ∪ {∞}`.
newtype Tropical = Tropical Number

-- | Unpack the underlying `Number`.
runTropical :: Tropical -> Number
runTropical (Tropical n) = n

instance semiringTropical :: Semiring Tropical where
  zero = Tropical infinity
  (+) (Tropical x) (Tropical y) = Tropical (min x y)
  one = Tropical zero
  (*) (Tropical x) (Tropical y) = Tropical (x + y)

