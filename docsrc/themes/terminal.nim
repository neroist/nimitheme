import std/strutils

import nimitheme
import nimib

import ./gendoc

nbInit(useTerminal)

genThemeDoc(useTerminal, "Terminal")

nbSave
