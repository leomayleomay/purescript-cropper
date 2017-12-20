module Cropper.Types
  ( Cropper
  , CropperOptions
  , DragMode(..)
  , NonNegativeReal
  , UnitInterval
  , ViewMode(..)
  , dragModeToString
  , nonNegativeReal
  , unitInterval
  , viewModeToInt
  ) where

import Prelude

-- import Control.Monad.Eff (Eff, kind Effect)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)

foreign import data Cropper :: Type

foreign import data CropperOptions :: Type

newtype NonNegativeReal = NonNegativeReal Number
derive instance newtypeNonNegativeReal :: Newtype NonNegativeReal _
derive newtype instance showNonNegativeReal :: Show NonNegativeReal

nonNegativeReal :: Number -> Maybe NonNegativeReal
nonNegativeReal x | x >= 0.0 = Just (NonNegativeReal x)
nonNegativeReal _ = Nothing

newtype UnitInterval = UnitInterval Number
derive instance newtypeUnitInterval :: Newtype UnitInterval _
derive newtype instance showUnitInterval :: Show UnitInterval

unitInterval :: Number -> Maybe UnitInterval
unitInterval x | x >= 0.0 && x <= 1.0 = Just (UnitInterval x)
unitInterval _ = Nothing

data DragMode
  = Crop
  | Move
  | None

dragModeToString :: DragMode -> String
dragModeToString Crop = "crop"
dragModeToString Move = "move"
dragModeToString None = "none"

data ViewMode
  = Zero
  | One
  | Two
  | Three

viewModeToInt :: ViewMode -> Int
viewModeToInt Zero = 0
viewModeToInt One = 1
viewModeToInt Two = 2
viewModeToInt Three = 3
