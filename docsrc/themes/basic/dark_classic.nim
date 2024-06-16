import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useBasicDarkClassic)

genThemeDoc(useBasicDarkClassic, "Basic Dark Classic")

var doc* = nb
