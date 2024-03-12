# From: https://simplecss.org/

import nimib/themes
import nimib

import ./utils

const
  simple* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kevquirk/simple.css/simple.min.css">"""
  simpleStyle* = """
<style>
  header {
    padding-top: 16px !important;
  }
</style>
"""

proc useSimple*(doc: var NbDoc) = 
  useStyle simple, simpleStyle, useDarkMode = true
  doc.fixCode()
