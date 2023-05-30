import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useConcrete)

genThemeDoc(useConcrete, "Concrete")

nbSave
