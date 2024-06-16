import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useSPCSSDark)

genThemeDoc(useSPCSSDark, "SPCSS Dark")

var doc* = nb
