# From: https://ruanmartinelli.github.io/axist/

import nimib/themes
import nimib

import ./utils

const
  axist* = """<link rel="stylesheet" href="https://unpkg.com/axist@latest/dist/axist.min.css" />"""
  axistStyle* = """
<style>
code {
  white-space: inherit;
}

pre {
  background-color: inherit;
}
</style>
"""

proc useAxist*(doc: var NbDoc) = 
  useStyle axist, axistStyle
