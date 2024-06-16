import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useBare)

genThemeDoc(useBare, "Bare")

var doc* = nb
