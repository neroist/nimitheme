import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useWrit)

genThemeDoc(useWrit, "Writ")

var doc* = nb
