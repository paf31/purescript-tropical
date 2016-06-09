-- | This module defines the _tropical semiring_.

module Data.Semiring.Tropical where

import Prelude

import Math as Math
import Global as Global

-- | The tropical semiring is given by `(R ∪ {∞}, min, +)`, but we use `Number` as
-- | an approximation to `R ∪ {∞}`.
newtype Tropical = Tropical Number

-- | Unpack the underlying `Number`.
runTropical :: Tropical -> Number
runTropical (Tropical n) = n

instance semiringTropical :: Semiring Tropical where
  zero = Tropical Global.infinity
  add (Tropical x) (Tropical y) = Tropical (Math.min x y)
  one = Tropical zero
  mul (Tropical x) (Tropical y) = Tropical (add x y)
