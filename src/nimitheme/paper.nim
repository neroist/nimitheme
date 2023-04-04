# From: https://www.getpapercss.com/

import nimib/themes
import nimib

import ./utils

const
  paper* = """<link rel="stylesheet" href="https://unpkg.com/papercss@1.9.1/dist/paper.min.css" />"""
  paperStyle* = """
  <style>
    body {
      margin: 15px;
    }
  </style>
"""

proc usePaper*(doc: var NbDoc) = 
  useStyle paper, paperStyle
