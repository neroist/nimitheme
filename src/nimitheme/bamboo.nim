import nimib/themes
import nimib

import highlight_js

const
  bamboo* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css">"""
  bambooDark* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css">"""
  bambooLight* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css/dist/light.min.css">"""
  bambooStyle* = """
  <style>
    header > hr, footer {
      padding: 10px;
    }

    header {
      padding: 15px;
    }
  </style>
"""

proc useBamboo*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = bamboo
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & bambooStyle

proc useBambooDark*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.highlight = codeschool
  doc.context["stylesheet"] = bambooDark
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & bambooStyle

proc useBambooLight*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = bambooLight
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & bambooStyle
