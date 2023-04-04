# From: https://ungoldman.com/style.css/

import nimib/themes
import nimib

import ./utils

const
  style* = """<link rel="stylesheet" href="https://unpkg.com/style.css">"""
  styleStyle* = """
<style>
  body {
    padding-left: 10px;
    padding-right: 10px;
  }

  header, footer {
    padding: 15px;
  }

  footer {
    padding-top: 0px;
  }
</style>
"""

proc useStyle*(doc: var NbDoc) = 
  useStyle style, styleStyle
