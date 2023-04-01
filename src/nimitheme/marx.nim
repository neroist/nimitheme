import nimib/themes
import nimib

import ./utils

const
  marx* = """<link rel="stylesheet" href="https://unpkg.com/marx-css/css/marx.min.css">"""
  marxStyle* = """
<style>
  footer, header {
    padding: 15px;
  }
</style>
"""

proc useMarx*(doc: var NbDoc) = 
  useStyle marx, marxStyle
