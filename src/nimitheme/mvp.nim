import nimib/themes
import nimib

import ./utils

const 
  mvp* = """<link rel="stylesheet" href="https://unpkg.com/mvp.css@1.12/mvp.css">"""
  mvpStyle* = """
<style>
  hr {
    margin-top: 15px !important;
    margin-bottom: 15px !important;
  }

  header {
    padding: 15px !important;
  }

  main, footer {
    padding-top: 0px !important;
  }

  section#source pre, section#source pre code {
    max-width: 100%;
    padding: 16px;
  }
</style>
"""

proc useMvp*(doc: var NbDoc) = 
  useStyle mvp, mvpStyle
