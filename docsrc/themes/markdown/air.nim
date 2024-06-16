import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useMarkdownAir)

genThemeDoc(useMarkdownAir, "Markdown Air")

var doc* = nb
