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
  

proc useSakuraDarkSolarized*(doc: var NbDoc) = 
  useStyle sakuraDarkSolarized, sakuraStyle, useDarkMode = true
  doc.highlight = solarizedDark
  

proc useSakuraDark*(doc: var NbDoc) = 
  useStyle sakuraDark, sakuraStyle, useDarkMode = true
  

proc useSakuraEarthly*(doc: var NbDoc) = 
  useStyle sakuraEarthly, sakuraStyle
  

proc useSakuraInk*(doc: var NbDoc) = 
  useStyle sakuraInk, sakuraStyle
  

proc useSakuraPink*(doc: var NbDoc) = 
  useStyle sakuraPink, sakuraStyle
  doc.highlight = sagelight
  

proc useSakuraVader*(doc: var NbDoc) = 
  useStyle sakuraVader, sakuraStyle, useDarkMode = true
  
