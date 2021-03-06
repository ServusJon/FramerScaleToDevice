Framer Module: Scale Your Prototype To Different Screensizes
======================================

Here is a simple module I use to view my prototype on my iPhone even if I build the device fitting a standard android device like the Nexus 5X. The performance of Framer prototypes is currently much better on an iPhone.

If you import designs and they are rendered wrong on your devices please try it with a different scaling (@2x, @3x,…)
@3x worked great for me when I imported a design that was build in @1x (360x640)

![Alt Text](https://raw.githubusercontent.com/ServusJon/FramerScaleToDevice/master/resize.jpg)

## 1. Add the module to the top of your Framer prototype:
Copy the scaleToDevice.coffee file to the module folder and include it in your prototype.
```coffee
scaleToDevice = require "scaleToDevice"
```

## 2. Set a reference layer.width
This reference layer.width should have 100% width of your prototype.
```coffee
referenceFrame = scaleToDevice.scaleToDevice(MYREFERENCELAYER.width)
```

## Optional: Instead of using Framer.width or Framer.height you need to use:
```coffee
referenceFrame.width
referenceFrame.height
```