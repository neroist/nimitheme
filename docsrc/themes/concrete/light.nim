import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useConcreteLight)

genThemeDoc(useConcreteLight, "Concrete Light")

nbSave
