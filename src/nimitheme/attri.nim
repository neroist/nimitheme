import nimib/themes
import nimib

import highlight_js

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
  doc.useDefault()
  doc.context["stylesheet"] = attriBrightLightGreen
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & attriStyle

proc useAttriDarkFairyPink*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = attriDarkFairyPink
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & attriStyle

proc useAttriDarkForestGreen*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = greenScreen
  doc.context["stylesheet"] = attriDarkForestGreen
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & attriStyle

proc useAttriLightFairyPink*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["highlight"] = horizonLight
  doc.context["stylesheet"] = attriLightFairyPink
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & attriStyle

proc useAttriMidnightGreen*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = attriMidnightGreen
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & attriStyle
