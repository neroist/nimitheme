# theme from https://github.com/zetashift/nimibujo

import nimib/themes
import nimib

const
  nimibujo* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/zetashift/nimibujo/style.css">"""

proc useNimibujo*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = nimibujo