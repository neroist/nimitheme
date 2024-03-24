# From: https://picocss.com/

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  pico* = """<link rel="stylesheet" href="https://unpkg.com/@picocss/pico@1.*/css/pico.min.css">"""
  picoStyle* = """
<style>
  body {
    padding-left: 15px;
    padding-right: 15px;
  }

  header, footer, main {
    padding: 15px !important;
  }

  footer {
    padding-top: 0px;
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
  useStyle pico, picoStyle
  

proc usePicoDark*(doc: var NbDoc) = 
  useStyle pico, picoStyle, useDarkMode = true, fixCode = false
  doc.highlight = solarizedDark
  doc.partials["document"] = picoDarkDocument
  

proc usePicoLight*(doc: var NbDoc) = 
  useStyle pico, picoStyle, fixCode = false
  doc.partials["document"] = picoLightDocument
  
