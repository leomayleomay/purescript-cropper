exports.cropper = function cropper(options) {
  return function(element) {
    return function() {
      return new Cropper(element, options);
    };
  };
}




