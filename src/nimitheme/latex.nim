import nimib/themes
import nimib

const
  latex* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/davidrzs/latexcss/latex.css">"""

proc useLatexCSS*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = latex
