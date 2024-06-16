import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useAlmondLite)

genThemeDoc(useAlmondLite, "Almond Lite")

var doc* = nb
