import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useW3cChocolate)

genThemeDoc(useW3cChocolate, "W3c Chocolate")

var doc* = nb
