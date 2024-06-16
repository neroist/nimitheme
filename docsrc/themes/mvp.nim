import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useMvp)

genThemeDoc(useMvp, "MVP")

var doc* = nb
