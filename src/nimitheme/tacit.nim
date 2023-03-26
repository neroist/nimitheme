import nimib/themes
import nimib

const
  tacit* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/yegor256/tacit@gh-pages/tacit-css-1.5.5.min.css"/>"""
  tacitStyle* = """
<style>
header, footer {
  padding: 0px;
  max-width: 100%;
}

header div.nb-box {
  padding-bottom: 15px;
}
</style>
"""

proc useTacit*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = tacit
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & tacitStyle