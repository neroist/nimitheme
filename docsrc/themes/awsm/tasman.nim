import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useAwsmTasman)

genThemeDoc(useAwsmTasman, "Awsm Tasman")

var doc* = nb
