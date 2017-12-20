module Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Cropper as C
import DOM.HTML.HTMLImageElement (create)
import Data.Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Data.Options (Options, options, (:=))

foreign import showForeign :: Foreign -> String

el =  create unit

opts :: Options C.CropperOptions
opts =
  C.viewMode := C.Two <>
  C.dragMode := C.Crop <>
  C.aspectRatio := C.nonNegativeReal (16.0 / 9.0) <>
  C.autoCrop := true <>
  C.autoCropArea := C.unitInterval 0.432 <>
  C.minContainerWidth := C.nonNegativeReal 200.43 <>
  C.wheelZoomRatio := C.unitInterval 0.234 <>
  C.minContainerWidth := C.nonNegativeReal 120.423 <>
  C.minCanvasWidth := C.nonNegativeReal 432.4

main :: forall eff. Eff (console :: CONSOLE | eff) Unit
main = log <<< showForeign <<< options $ opts
