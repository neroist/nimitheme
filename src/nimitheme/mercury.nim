# From: https://wmeredith.github.io/MercuryCSS/

import nimib/themes
import nimib

import ./utils

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

  footer {
    padding-bottom: 5px;
  }
</style>
"""

proc useMercury*(doc: var NbDoc) = 
  useStyle mercury, mercuryStyle
  doc.fixCode()
