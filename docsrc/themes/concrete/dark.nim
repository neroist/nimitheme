import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useConcreteDark)

genThemeDoc(useConcreteDark, "Concrete Dark")

var doc* = nb
