import nimib/themes
import nimib

const
  bonsai* = """<link href="https://unpkg.com/bonsai.css@latest/dist/bonsai.min.css" rel="stylesheet" />"""
  bonsaiStyle* = """
<style>
  footer {
    padding: 5px;
  }
  main, section#source {
    padding: 10px;
  }
</style>
"""

proc useBonsai*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = bonsai
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & bonsaiStyle
