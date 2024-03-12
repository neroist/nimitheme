# From: https://a11yana.com/

import nimib/themes
import nimib

import ./utils

const
  a11yana* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/alexandersandberg/a11yana/dist/a11yana.min.css" />"""

proc useA11yana*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = a11yana
  doc.fixCode()
