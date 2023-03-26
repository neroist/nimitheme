import nimib/themes
import nimib

const
  marx* = """<link rel="stylesheet" href="https://unpkg.com/marx-css/css/marx.min.css">"""
  marxStyle* = """
<style>
  footer, header {
    padding: 15px;
  }
</style>
"""

proc useMarx*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = marx
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & marxStyle

