# From: https://github.com/oxalorg/sakura

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  sakura* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura.css">"""
  sakuraDarkSolarized* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-dark-solarized.css">"""
  sakuraDark* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-dark.css">"""
  sakuraEarthly* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-earthly.css">"""
  sakuraInk* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-ink.css">"""
  sakuraPink* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-pink.css">"""
  sakuraVader* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura-vader.css">"""
  sakuraStyle* = """
<style>
 .nb-small {
    font-size: smaller;
  }
</style>
"""

proc useSakura*(doc: var NbDoc) = 
  useStyle sakura, sakuraStyle
  doc.fixCode()

proc useSakuraDarkSolarized*(doc: var NbDoc) = 
  useStyle sakuraDarkSolarized, sakuraStyle, useDarkMode = true
  doc.highlight = solarizedDark
  doc.fixCode()

proc useSakuraDark*(doc: var NbDoc) = 
  useStyle sakuraDark, sakuraStyle, useDarkMode = true
  doc.fixCode()

proc useSakuraEarthly*(doc: var NbDoc) = 
  useStyle sakuraEarthly, sakuraStyle
  doc.fixCode()

proc useSakuraInk*(doc: var NbDoc) = 
  useStyle sakuraInk, sakuraStyle
  doc.fixCode()

proc useSakuraPink*(doc: var NbDoc) = 
  useStyle sakuraPink, sakuraStyle
  doc.highlight = sagelight
  doc.fixCode()

proc useSakuraVader*(doc: var NbDoc) = 
  useStyle sakuraVader, sakuraStyle, useDarkMode = true
  doc.fixCode()
