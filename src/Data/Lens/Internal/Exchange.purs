-- | This module defines the `Exchange` profunctor

module Data.Lens.Internal.Exchange where

import Prelude
import Data.Either
import Data.Profunctor
import qualified Data.Bifunctor as B
import Data.Profunctor.Choice

-- | The `Exchange` profunctor characterizes an `Iso`.
data Exchange a b s t = Exchange (s -> a) (b -> t)

instance functorExchange :: Functor (Exchange a b s) where
  map f (Exchange a b) = Exchange a (f <<< b)

instance profunctorExchange :: Profunctor (Exchange a b) where
  dimap f g (Exchange a b) = Exchange (a <<< f) (g <<< b)
