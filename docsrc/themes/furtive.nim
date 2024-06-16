import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useFurtive)

genThemeDoc(useFurtive, "Furtive")

var doc* = nb
