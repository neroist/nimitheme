import std/strutils

import nimitheme
import nimib

import ../gendoc

nbInit(useGithubMarkdownLight)

genThemeDoc(useGithubMarkdownLight, "Github Markdown Light")

var doc* = nb
