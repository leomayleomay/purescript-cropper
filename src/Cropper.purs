module Cropper
  ( module Cropper.Methods
  , module Cropper.Options
  , module Cropper.Types
  ) where

import Cropper.Methods
import Cropper.Options
import Cropper.Types
import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (HTMLImageElement)
import Data.Maybe (Maybe)
import Data.Options (Options(..))
import Data.Options (Options)

foreign import cropper
  :: ∀ eff
  . Maybe (Options CropperOptions)
  -> HTMLImageElement
  -> Eff (dom :: DOM | eff) Cropper

-- data CropperElement
--   = HTMLCanvasElement
--   | HTMLImageElement
