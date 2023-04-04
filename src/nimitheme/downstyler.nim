# From: https://waldyrious.net/downstyler/

import nimib/themes
import nimib

import ./utils

const
  downstyler* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/waldyrious/downstyler/downstyler.css">"""
  downstylerStyle* = """
<style>
  pre {
    background-color: transparent;
  }
</style> 
"""

proc useDownstyler*(doc: var NbDoc) = 
  useStyle downstyler, downstylerStyle
  