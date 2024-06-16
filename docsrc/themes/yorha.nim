import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useYoRHa)

genThemeDoc(useYoRHa, "YoRHa")

var doc* = nb
