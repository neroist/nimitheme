import nimib/themes
import nimib

import highlight_js

const
  YoRHa* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/metakirby5/yorha/dist/yorha.min.css" />"""

proc useYoRHa*(doc: var NbDoc) = 
  doc.useDefault()
  doc.highlight = gruvboxLightHard
  doc.context["stylesheet"] = YoRHa
