import nimib/themes
import nimib

const
  mercury* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/wmeredith/MercuryCSS/dist/mercury.css">"""
  mercuryStyle* = """
<style>
  pre {
    padding: 0;
  }

  .nb-small {
    font-size: 1.1rem;
  }

  header {
    padding-top: 5px; 
  }
</style>
"""

proc useMercury*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = mercury
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & mercuryStyle
