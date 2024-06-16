import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useNimibujo)

genThemeDoc(useNimibujo, "Nimibujo")

var doc* = nb
