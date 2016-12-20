module Test.Main where

import Prelude

import Euler (answer)
import Test.Assert (ASSERT, assert)
import Control.Monad.Eff (Eff)

main :: forall t1.
      Eff
        ( assert :: ASSERT
        | t1
        )
        Unit
main = do
  assert (answer == 233168)
