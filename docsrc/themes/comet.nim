import std/strutils

import nimitheme/comet
import nimib

import ./gendoc

nbInit(useComet)

genThemeDoc(useComet, "Comet")

var doc* = nb
