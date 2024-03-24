# From: https://github.com/metakirby5/yorha

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  YoRHa* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/metakirby5/yorha/dist/yorha.min.css" />"""
  YoRHaStyle* = """
<style>
  body {
    margin: 1rem auto;
    max-width: 56rem;
    min-height: 100%;
    overflow-x: hidden;
  }
</style>
"""

proc useYoRHa*(doc: var NbDoc) = 
  useStyle YoRHa, YoRHaStyle
  doc.highlight = gruvboxLightHard
  
