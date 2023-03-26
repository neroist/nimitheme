import nimib/themes
import nimib

const
  bahunya* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css">"""

proc useBahunya*(doc: var NbDoc) = 
  doc.darkMode()
  doc.useDefault()
  doc.context["stylesheet"] = bahunya
