import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useSakura)

genThemeDoc(useSakura, "Sakura")

var doc* = nb
