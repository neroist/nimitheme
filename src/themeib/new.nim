import nimib/themes
import nimib

import ./highlight_js

const 
  newCss* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1.1.2/new.min.css">"""

proc useNewCss*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = a11yDark
  doc.context["stylesheet"] = newCss
