import nimib/themes
import nimib

const
  axist* = """<link rel="stylesheet" href="https://unpkg.com/axist@latest/dist/axist.min.css" />"""
  axistStyle* = """
<style>
code {
  white-space: inherit;
}

pre {
  background-color: inherit;
}
</style>
"""

proc useAxist*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = axist
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & axistStyle
