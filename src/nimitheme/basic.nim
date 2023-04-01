import std/strutils

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  basic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/basic.min.css" />"""
  basicMobile* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/mobile.css" />"""
  basicDarkClassic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/dark-classic.css" />"""
  basicDarkOrange* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/dark-orange.css" />"""
  basicLightAquamarine* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/light-aquamarine.css" />"""
  basicLightClassic* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/vladocar/Basic.css/css/theme/light-classic.css" />"""
  basicStyle* = """
<style>
  main, footer, section#source {
    padding: 5px;
  }
</style>
"""


proc useBasic*(doc: var NbDoc) = 
  useStyle [basic, basicMobile], basicStyle

proc useBasicDarkClassic*(doc: var NbDoc) = 
  useStyle [basic, basicDarkClassic, basicMobile], basicStyle, useDarkMode = true
  doc.highlight = tomorrowNightBlue

proc useBasicDarkOrange*(doc: var NbDoc) = 
  useStyle [basic, basicDarkOrange, basicMobile], basicStyle, useDarkMode = true

proc useBasicLightAquamarine*(doc: var NbDoc) = 
  useStyle [basic, basicLightAquamarine, basicMobile], basicStyle

proc useBasicLightClassic*(doc: var NbDoc) = 
  useStyle [basic, basicLightClassic, basicMobile], basicStyle
