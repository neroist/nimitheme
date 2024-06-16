import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useAwsmGondola)

genThemeDoc(useAwsmGondola, "Awsm Gondola")

var doc* = nb
