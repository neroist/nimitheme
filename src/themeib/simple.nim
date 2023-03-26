import nimib/themes
import nimib

const
  simple* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kevquirk/simple.css/simple.min.css">"""

proc useSimple*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = simple
