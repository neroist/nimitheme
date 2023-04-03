import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  w3cChocolate* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Chocolate">"""
  w3cMidnight* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Midnight">"""
  w3cModernist* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Modernist">"""
  w3cOldStyle* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Oldstyle">"""
  w3cSteely* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Steely">"""
  w3cSwiss* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Swiss">"""
  w3cTraditional* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Traditional">"""
  w3cUltramarine* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Ultramarine">"""
  w3cMidnightStyle* = """
  <style>
    body {
      margin-left: 8%;
    }
  </style>
"""

proc useW3cChocolate*(doc: var NbDoc) = 
  useStyle w3cChocolate, useDarkMode = true

proc useW3cMidnight*(doc: var NbDoc) = 
  useStyle w3cMidnight, w3cMidnightStyle, useDarkMode = true

proc useW3cModernist*(doc: var NbDoc) = 
  useStyle w3cModernist

proc useW3cOldStyle*(doc: var NbDoc) = 
  useStyle w3cOldstyle

proc useW3cSteely*(doc: var NbDoc) = 
  useStyle w3cSteely

proc useW3cSwiss*(doc: var NbDoc) = 
  useStyle w3cSwiss

proc useW3cTraditional*(doc: var NbDoc) = 
  useStyle w3cTraditional

proc useW3cUltramarine*(doc: var NbDoc) = 
  useStyle w3cUltramarine
  doc.highlight = tomorrowNightBlue
