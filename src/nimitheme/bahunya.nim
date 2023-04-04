# From: https://hakanalpay.com/bahunya/

import nimib/themes
import nimib

import ./utils

const
  bahunya* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css" />"""

proc useBahunya*(doc: var NbDoc) = 
  useStyle bahunya, useDarkMode = true
