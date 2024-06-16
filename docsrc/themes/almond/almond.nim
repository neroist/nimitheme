import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useAlmond)

genThemeDoc(useAlmond, "Almond")

var doc* = nb
