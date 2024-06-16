import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useBasicLightClassic)

genThemeDoc(useBasicLightClassic, "Basic Light Classic")

var doc* = nb
