import nimib/themes
import nimib

const
  simple* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kevquirk/simple.css/simple.min.css">"""
  simpleStyle* = """
<style>
  header {
    padding-top: 16px !important;
  }
</style>
"""

proc useSimple*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = simple
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & simpleStyle
