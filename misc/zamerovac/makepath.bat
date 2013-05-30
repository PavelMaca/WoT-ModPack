@ECHO OFF
swfmill swf2xml orig/QuantityInClipBars.swf orig/QuantityInClipBars.xml
mv orig/QuantityInClipBars.xml QuantityInClipBars.xml
patch < QuantityInClipBars.xml.patch
swfmill xml2swf QuantityInClipBars.xml QuantityInClipBars.swf

del QuantityInClipBars.xml
del QuantityInClipBars.xml.orig

pause