module Cropper.Options where

import Cropper.Types (CropperOptions, DragMode, NonNegativeReal(..), UnitInterval(..), ViewMode, dragModeToString, viewModeToInt)
import Data.Functor.Contravariant (cmap)
import Data.Maybe (Maybe)
import Data.Options (Option, opt, optional)
import Prelude

autoCrop :: Option CropperOptions Boolean
autoCrop = opt "autoCrop"

autoCropArea :: Option CropperOptions (Maybe UnitInterval)
autoCropArea = optional (opt "autoCropArea")

aspectRatio :: Option CropperOptions (Maybe NonNegativeReal)
aspectRatio = optional (opt "aspectRatio")

background :: Option CropperOptions Boolean
background = opt "background"

center :: Option CropperOptions Boolean
center = opt "center"

checkCrossOrigin :: Option CropperOptions Boolean
checkCrossOrigin = opt "checkCrossOrigin"

-- Requires to set both the rotatable and scalable options to true at the same time.
checkOrientation :: Option CropperOptions Boolean
checkOrientation = opt "checkOrientation"

cropBoxMovable :: Option CropperOptions Boolean
cropBoxMovable = opt "cropBoxMovable"

cropBoxResizable :: Option CropperOptions Boolean
cropBoxResizable = opt "cropBoxResizable"

dragMode :: Option CropperOptions DragMode
dragMode = cmap dragModeToString (opt "dragMode")

guides :: Option CropperOptions Boolean
guides = opt "guides"

highlight :: Option CropperOptions Boolean
highlight = opt "highlight"

minCanvasHeight :: Option CropperOptions (Maybe NonNegativeReal)
minCanvasHeight = optional (opt "minCanvasHeight")

minCanvasWidth :: Option CropperOptions (Maybe NonNegativeReal)
minCanvasWidth = optional (opt "minCanvasWidth")

minContainerHeight :: Option CropperOptions (Maybe NonNegativeReal)
minContainerHeight = optional (opt "minContainerHeight")

minContainerWidth :: Option CropperOptions (Maybe NonNegativeReal)
minContainerWidth = optional (opt "minContainerHeight")

minCropBoxHeight :: Option CropperOptions (Maybe NonNegativeReal)
minCropBoxHeight = optional (opt "minCropBoxHeight")

minCropBoxWidth :: Option CropperOptions (Maybe NonNegativeReal)
minCropBoxWidth = optional (opt "minCropBoxWidth")

responsive :: Option CropperOptions Boolean
responsive = opt "responsive"

restore :: Option CropperOptions Boolean
restore = opt "restore"

rotatable :: Option CropperOptions Boolean
rotatable = opt "rotatable"

scalable :: Option CropperOptions Boolean
scalable = opt "scalable"

toggleDragModeOnDblclick :: Option CropperOptions Boolean
toggleDragModeOnDblclick = opt "toggleDragModeOnDblclick"

viewMode :: Option CropperOptions ViewMode
viewMode = cmap viewModeToInt (opt "viewMode")

wheelZoomRatio :: Option CropperOptions (Maybe UnitInterval)
wheelZoomRatio = optional (opt "wheelZoomRatio")

zoomable :: Option CropperOptions Boolean
zoomable = opt "zoomable"

zoomOnTouch :: Option CropperOptions Boolean
zoomOnTouch = opt "zoomOnTouch"

zoomOnWheel :: Option CropperOptions Boolean
zoomOnWheel = opt "zoomOnWheel"

-- TODO:
-- https://github.com/fengyuanchen/cropperjs/blob/master/README.md#data

{--type Data =--}
  {--{ x :: Number--}
  {--, y :: Number--}
  {--, width :: Number--}
  {--, height :: Number--}
  {--, scaleX :: Number--}
  {--, scaleY :: Number--}
  {--}--}
