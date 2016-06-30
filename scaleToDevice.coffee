###
1. Add this module to your Framer by inserting this to top of your file:
scaleToDevice = require "scaleToDevice"

2. Then set a reference layer.width (should have 100% width of your prototype):
referenceFrame = helper.scaleToDevice(MYREFERENCELAYER.width)

Optional: Instead of using Framer.width or Framer.height you need to use:
referenceFramer.width
referenceFramer.height
###

exports.scaleToDevice = (referenceLayerWidth) ->
	sideFactor = Framer.Device.screen.height / Framer.Device.screen.width
	referenceWidth = referenceLayerWidth
	referenceHeight = referenceWidth * sideFactor

	resizeFactor = Framer.Device.screen.width / referenceWidth
	Framer.Device.contentScale = resizeFactor

	return {
		"width": referenceWidth,
		"height": referenceHeight
	}