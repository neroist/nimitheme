# From: https://newcss.net/

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const 
  newCss* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1.1.2/new.min.css">"""

proc useNew*(doc: var NbDoc) = 
  useStyle newCss, useDarkMode = true
  doc.highlight = a11yDark
  
