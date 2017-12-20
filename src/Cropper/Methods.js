exports.clear = function clear(cropper) {
  return function() {
    return cropper.clear();
  };
}

exports.crop = function crop(cropper) {
  return function() {
    return cropper.crop();
  };
}

exports.destroy = function destroy(cropper) {
  return function() {
    return cropper.destroy();
  };
}

exports.disable = function disable(cropper) {
  return function() {
    return cropper.disable();
  };
}

exports.enable = function enable(cropper) {
  return function() {
    return cropper.enable();
  };
}

// exports.move = function move(cropper) {
//   return function(offset) {
//     return function() {
//       return cropper.move(offset.value0, offset.value1);
//     };
//   };
// }

// function replace(url) {
//   return function(onlyColorChanged) {
//     return function() {

//     };
//   };
// }

exports.reset = function reset(cropper) {
  return function() {
    return cropper.reset();
  };
}

exports.zoom = function zoom(cropper) {
  return function(ratio) {
    return function() {
      return cropper.zoom(ratio);
    };
  };
}

exports.zoomTo = function zoomTo(cropper) {
  return function(ratio) {

  };
}
