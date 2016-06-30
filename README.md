Framer Module: Scale Your Prototype To Your Device
======================================

Here is a simple module I use to view my prototype on my iPhone even if I build the device fitting a standard android device like the Nexus 5X. The performance of Framer prototypes is currently much better on an iPhone.

![Alt Text](https://raw.githubusercontent.com/ServusJon/FramerScaleToDevice/master/resize.jpg)

## 1. Add the module to the top of your Framer prototype:
```coffee
scaleToDevice = require "scaleToDevice"
```

## 2. Set a reference layer.width
This reference layer.width should have 100% width of your prototype.
```coffee
referenceFrame = helper.scaleToDevice(MYREFERENCELAYER.width)
```

## Optional: Instead of using Framer.width or Framer.height you need to use:
```coffee
referenceFramer.width
referenceFramer.height
```