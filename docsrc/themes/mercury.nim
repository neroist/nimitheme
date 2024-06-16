import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useMercury)

genThemeDoc(useMercury, "Mercury")

var doc* = nb
