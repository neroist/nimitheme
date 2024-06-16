import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useSakuraDark)

genThemeDoc(useSakuraDark, "Sakura Dark")

var doc* = nb
