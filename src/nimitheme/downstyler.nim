# From: https://waldyrious.net/downstyler/

import nimib/themes
import nimib

import ./utils

const
  downstyler* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/waldyrious/downstyler/downstyler.css">"""

proc useDownstyler*(doc: var NbDoc) = 
  useStyle downstyler
  doc.fixCode()
