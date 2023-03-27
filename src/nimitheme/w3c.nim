import nimib/themes
import nimib

import highlight_js

const
  w3cChocolate* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Chocolate">"""
  w3cMidnight* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Midnight">"""
  w3cModernist* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Modernist">"""
  w3cOldStyle* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Oldstyle">"""
  w3cSteely* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Steely">"""
  w3cSwiss* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Swiss">"""
  w3cTraditional* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Traditional">"""
  w3cUltramarine* = """<link rel="stylesheet" type="text/css" href="https://www.w3.org/StyleSheets/Core/Ultramarine">"""

proc useW3cChocolate*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = w3cChocolate

proc useW3cMidnight*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = w3cMidnight

proc useW3cModernist*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = w3cModernist

proc useW3cOldStyle*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = w3cOldstyle

proc useW3cSteely*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = w3cSteely

proc useW3cSwiss*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = w3cSwiss

proc useW3cTraditional*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = w3cTraditional

proc useW3cUltramarine*(doc: var NbDoc) = 
  doc.useDefault()
  doc.highlight = tomorrowNightBlue
  doc.context["stylesheet"] = w3cUltramarine