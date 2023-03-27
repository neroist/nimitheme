import nimib/themes
import nimib

import highlight_js

const
  pico* = """<link rel="stylesheet" href="https://unpkg.com/@picocss/pico@1.*/css/pico.min.css">"""
  picoStyle* = """
<style>
  body {
    padding-left: 15px;
    padding-right: 15px;
  }

  header, footer {
    padding: 15px !important;
  }

  footer {
    padding-top: 0px !important;
  }
</style>
"""
  picoLightDocument* = """
<!DOCTYPE html>
<html lang="en-us" data-theme="light">
{{> head }}
<body>
{{> header }}
{{> left }}
{{> main }}
{{> right }}
{{> footer }}
</body>
</html>"""
  picoDarkDocument* = """
<!DOCTYPE html>
<html lang="en-us" data-theme="dark">
{{> head }}
<body>
{{> header }}
{{> left }}
{{> main }}
{{> right }}
{{> footer }}
</body>
</html>"""

proc usePico*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = pico
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & picoStyle

proc usePicoDark*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.usePico()
  doc.context["highlight"] = solarizedDark
  doc.partials["document"] = picoDarkDocument

proc usePicoLight*(doc: var NbDoc) = 
  doc.useDefault()
  doc.usePico()
  doc.partials["document"] = picoLightDocument
