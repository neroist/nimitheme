import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useStyle)

genThemeDoc(useStyle, "Style")

var doc* = nb
