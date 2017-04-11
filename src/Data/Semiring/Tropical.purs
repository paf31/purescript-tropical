-- | This module defines the _tropical semiring_.

module Data.Semiring.Tropical where

import Prelude
import Global (infinity)
import Math as Math
import Data.Newtype (class Newtype)

-- | The tropical semiring is given by `(ℝ ∪ {∞}, min, +)`, but we use `Number` as
-- | an approximation to `ℝ ∪ {∞}`.
newtype Tropical = Tropical Number

derive instance newtypeTropical :: Newtype Tropical _

derive newtype instance eqTropical :: Eq Tropical
derive newtype instance ordTropical :: Ord Tropical

instance showTropical :: Show Tropical where
  show (Tropical x) = "(Tropical " <> show x <> ")"

instance semiringTropical :: Semiring Tropical where
  zero = Tropical infinity
  add (Tropical x) (Tropical y) = Tropical (Math.min x y)
  one = Tropical zero
  mul (Tropical x) (Tropical y) = Tropical (add x y)
