# From: https://andybrewer.github.io/mvp/

import nimib/themes
import nimib

import ./utils

const 
  mvp* = """<link rel="stylesheet" href="https://unpkg.com/mvp.css@1.12/mvp.css">"""
  mvpStyle* = """
<style>
  hr {
    margin-top: 15px;
    margin-bottom: 15px;
  }

  header {
    padding: 15px;
  }

  main, footer {
    padding-top: 0px;
  }

  section#source pre, section#source pre code {
    max-width: 100%;
    padding: 16px;
  }
</style>
"""

proc useMvp*(doc: var NbDoc) = 
  useStyle mvp, mvpStyle
  doc.fixCode()
