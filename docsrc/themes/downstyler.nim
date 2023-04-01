import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useDownstyler)

genThemeDoc(useDownstyler, "Downstyler")

nbSave
