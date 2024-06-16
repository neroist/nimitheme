import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useSakuraDarkSolarized)

genThemeDoc(useSakuraDarkSolarized, "Sakura Dark Solarized")

var doc* = nb
