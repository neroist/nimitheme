import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(usePaper)

genThemeDoc(usePaper, "Paper")

nbSave
