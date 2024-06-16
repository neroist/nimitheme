import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useClasslessTiny)

genThemeDoc(useClasslessTiny, "Classless Tiny")

var doc* = nb
