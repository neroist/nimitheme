# From: https://github.com/metakirby5/yorha

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  YoRHa* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/metakirby5/yorha/dist/yorha.min.css" />"""

proc useYoRHa*(doc: var NbDoc) = 
  useStyle YoRHa
  doc.highlight = gruvboxLightHard
