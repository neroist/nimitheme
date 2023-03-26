import nimib/themes
import nimib

const
  downstyler* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/waldyrious/downstyler/downstyler.css">"""
  downstylerStyle* = """
<style>
  pre {
    background-color: transparent;
  }
</style> 
"""

proc useDownstyler*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = downstyler
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & downstylerStyle
