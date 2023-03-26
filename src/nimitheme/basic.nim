import nimib/themes
import nimib

import highlight_js

const
  basic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/basic.min.css">"""
  basicMobile* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/mobile.css">"""
  basicDarkClassic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/dark-classic.css">"""
  basicDarkOrange* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/dark-orange.css">"""
  basicLightAquamarine* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/light-aquamarine.css">"""
  basicLightClassic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/light-classic.css">"""
  basicStyle* = """
<style>
  main, footer {
    padding: 5px;
  }
</style>
"""


proc useBasic*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = basic & '\n' & basicMobile
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & basicStyle

proc useBasicDarkClassic*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.highlight = tomorrowNightBlue
  doc.context["stylesheet"] = basic & '\n' & basicDarkClassic & '\n' & basicMobile
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & basicStyle

proc useBasicDarkOrange*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = basic & '\n' & basicDarkOrange & '\n' & basicMobile
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & basicStyle

proc useBasicLightAquamarine*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = basic & '\n' & basicLightAquamarine & '\n' & basicMobile
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & basicStyle

proc useBasicLightClassic*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = basic & '\n' & basicLightClassic & '\n' & basicMobile
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & basicStyle