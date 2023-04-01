import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useMarx)

genThemeDoc(useMarx, "Marx")

nbSave
