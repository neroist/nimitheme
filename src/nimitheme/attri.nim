# From: https://raj457036.github.io/attriCSS/

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  attriBrightLightGreen* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/raj457036/attriCSS/themes/brightlight-green.css" />"""
  attriDarkFairyPink* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/raj457036/attriCSS/themes/darkfairy-pink.css" />"""
  attriDarkForestGreen* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/raj457036/attriCSS/themes/darkforest-green.css" />"""
  attriLightFairyPink* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/raj457036/attriCSS/themes/lightfairy-pink.css" />"""
  attriMidnightGreen* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/raj457036/attriCSS/themes/midnight-green.css" />"""
  attriStyle* = """
<style>
  pre, pre * {
    font-family: monospace !important;
  }

  header, section#source {
    padding: 15px;
  }

  main {
    padding-left: 35px;
    padding-right: 35px;
  }

  footer div.nb-box {
    padding-right: 10px;
  }
</style>
"""
  attriBrightLightGreenMadeWithNimib* = """<span class="nb-small" style="color: white">made with <a href="https://pietroppeter.github.io/nimib/">nimib 🐳</a></span>"""

proc useAttriBrightLightGreen*(doc: var NbDoc) = 
  useStyle attriBrightLightGreen, attriStyle
  doc.partials["footer_left"] = attriBrightLightGreenMadeWithNimib
  doc.fixCode()

proc useAttriDarkFairyPink*(doc: var NbDoc) = 
  useStyle attriDarkFairyPink, attriStyle
  doc.fixCode()

proc useAttriDarkForestGreen*(doc: var NbDoc) = 
  useStyle attriDarkForestGreen, attriStyle, useDarkMode = true
  doc.highlight = greenScreen
  doc.fixCode()

proc useAttriLightFairyPink*(doc: var NbDoc) = 
  useStyle attriLightFairyPink, attriStyle
  doc.fixCode()

proc useAttriMidnightGreen*(doc: var NbDoc) = 
  useStyle attriMidnightGreen, attriStyle, useDarkMode = true
  doc.fixCode()
