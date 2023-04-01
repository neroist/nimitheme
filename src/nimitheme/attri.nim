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
pre {
  background-color: inherit;
}

header, section#source {
  padding: 15px;
}

main {
  padding: 5px
}
</style>
"""

proc useAttriBrightLightGreen*(doc: var NbDoc) = 
  useStyle attriBrightLightGreen, attriStyle

proc useAttriDarkFairyPink*(doc: var NbDoc) = 
  useStyle attriDarkFairyPink, attriStyle

proc useAttriDarkForestGreen*(doc: var NbDoc) = 
  useStyle attriDarkForestGreen, attriStyle, useDarkMode = true
  doc.highlight = greenScreen

proc useAttriLightFairyPink*(doc: var NbDoc) = 
  useStyle attriLightFairyPink, attriStyle

proc useAttriMidnightGreen*(doc: var NbDoc) = 
  useStyle attriMidnightGreen, attriStyle, useDarkMode = true
