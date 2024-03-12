# From: https://alvaromontoro.github.io/almond.css/

import nimib/themes
import nimib

import ./utils

const
  almond* = """<link rel="stylesheet" href="https://unpkg.com/almond.css@latest/dist/almond.min.css" />"""
  almondLite* = """<link rel="stylesheet" href="https://unpkg.com/almond.css@latest/dist/almond.lite.min.css" />"""

proc useAlmond*(doc: var NbDoc) = 
  useStyle almond
  doc.fixCode()

proc useAlmondLite*(doc: var NbDoc) = 
  useStyle almondLite
  doc.fixCode()
