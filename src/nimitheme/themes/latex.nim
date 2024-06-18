# From: https://davidrzs.github.io/latexcss/

import nimib/themes
import nimib

import ../utils

const
  latex* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/davidrzs/latexcss/latex.css">"""

proc useLatexCSS*(doc: var NbDoc) = 
  useStyle latex
  
