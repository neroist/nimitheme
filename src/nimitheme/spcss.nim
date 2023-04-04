import nimib/themes
import nimib

import ./utils

const
  spcss* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/spcss@0.9.0">"""
  spcssDark* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/neroist/nimitheme/assets/spcss-dark.min.css">"""
  spcssLight* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/neroist/nimitheme/assets/spcss-light.min.css">"""
  spcssStyle* = """
  <style>
    footer {
      padding-bottom: 1rem;
    }
  </style>
"""

proc useSPCSS*(doc: var NbDoc) = 
  useStyle spcss, spcssStyle

proc useSPCSSDark*(doc: var NbDoc) = 
  useStyle spcssDark, spcssStyle, useDarkMode = true

proc useSPCSSLight*(doc: var NbDoc) = 
  useStyle spcssLight, spcssStyle