import nimib/themes
import nimib

const
  noClass* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/davidpaulsson/no-class/docs/css/no-class.min.css">"""
  noClassStyle* = """
<style>
  header {
    margin-top: 1em;
    padding: 5px;
  }

  pre {
    background-color: transparent;
  }
  
  footer {
    padding: 5px;
  }

  .nb-small {
    font-size: 1.1rem;
  }
</style>
"""

proc useNoClass*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = noClass
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & noClassStyle
