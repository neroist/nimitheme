import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useBahunya)

genThemeDoc(useBahunya, "Bahunya")

var doc* = nb
