module Cropper.Methods where

import Control.Monad.Eff (Eff)
import Cropper.Types (Cropper)
import DOM (DOM)

type CropperEffects eff = Eff (dom :: DOM | eff)

foreign import clear
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper

foreign import crop
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper

foreign import destroy
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper

foreign import disable
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper

foreign import enable
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper

foreign import reset
  :: ∀ eff
  . Cropper
  -> (CropperEffects eff) Cropper
