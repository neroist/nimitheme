import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useTacit)

genThemeDoc(useTacit, "Tacit")

nbSave
