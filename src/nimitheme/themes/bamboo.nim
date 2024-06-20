# From: https://rilwis.github.io/bamboo/

import nimib/themes
import nimib

import ../highlight_js
import ../utils

const
  bamboo* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css">"""
  bambooDark* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css">"""
  bambooLight* = """<link rel="stylesheet" href="https://unpkg.com/bamboo.css/dist/light.min.css">"""
  bambooStyle* = """
  <style>
    header > hr, footer {
      padding: 10px;
    }

    header {
      padding: 15px;
    }
  </style>
"""

proc useBamboo*(doc: var NbDoc) = 
  useStyle bamboo, bambooStyle
  

proc useBambooDark*(doc: var NbDoc) = 
  useStyle bambooDark, bambooStyle, useDarkMode = true
  doc.highlight = codeschool
  

proc useBambooLight*(doc: var NbDoc) = 
  useStyle bambooLight, bambooStyle
  
