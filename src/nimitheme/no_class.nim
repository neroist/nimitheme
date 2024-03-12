# From: https://davidpaulsson.github.io/no-class/

import nimib/themes
import nimib

import ./utils

const
  noClass* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/davidpaulsson/no-class/docs/css/no-class.min.css">"""
  noClassStyle* = """
<style>
  header {
    margin-top: 1em;
    padding: 10px;
  }

  footer {
    padding: 10px;
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
  useStyle noClass, noClassStyle
  doc.fixCode()
