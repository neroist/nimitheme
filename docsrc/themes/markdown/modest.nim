import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useMarkdownModest)

genThemeDoc(useMarkdownModest, "Markdown Modest")

nbSave
