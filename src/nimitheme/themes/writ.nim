# From: https://writ.cmcenroe.me/

import nimib/themes
import nimib

import ../utils

const
  writ* = """<link rel="stylesheet" type="text/css" href="https://writ.cmcenroe.me/1.0.4/writ.min.css">"""
  writStyle* = """
  <style>
    footer {
      padding-top: 15px;
    }

    main figure {
      float: none
    }

    #source, header {
      max-width: 78ch;
      margin: auto;
    }
  </style>
"""

proc useWrit*(doc: var NbDoc) = 
  useStyle writ, writStyle, fixCode = false
  
