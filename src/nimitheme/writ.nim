import nimib/themes
import nimib

const
  writ* = """<link rel="stylesheet" type="text/css" href="https://writ.cmcenroe.me/1.0.4/writ.min.css">"""
  writStyle* = """
  <style>
    footer {
      padding-top: 15px;
    }
  </style>
"""

proc useWrit*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = writ
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & writStyle
