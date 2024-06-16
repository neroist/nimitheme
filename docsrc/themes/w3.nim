import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useW3)

genThemeDoc(useW3, "W3")

var doc* = nb
