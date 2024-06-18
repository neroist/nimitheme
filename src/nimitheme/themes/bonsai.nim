# From: https://www.bonsaicss.com/

import nimib/themes
import nimib

import ../utils

const
  bonsai* = """<link href="https://unpkg.com/bonsai.css@latest/dist/bonsai.min.css" rel="stylesheet" />"""
  bonsaiStyle* = """
<style>
  footer, header, main {
    padding: 15px;
  }
  main, section#source {
    padding: 10px;
  }
</style>
"""

proc useBonsai*(doc: var NbDoc) = 
  useStyle bonsai, bonsaiStyle
  
