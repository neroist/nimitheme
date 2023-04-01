import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useBonsai)

genThemeDoc(useBonsai, "Bonsai")

nbSave
