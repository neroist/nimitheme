# Couldn't find a link :(

import nimib/themes
import nimib

import ./highlight_js
import ./utils

const
  adsGazette* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-gazette.min.css" />"""
  adsMedium* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-medium.min.css" />"""
  adsNoteBook* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/neroist/nimitheme/assets/ads-notebook.min.css" />"""
  adsTufte* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-tufte.min.css" />"""
  adsTufteStyle* = """
  <style>
    body { padding-left: 0px; }
    footer { width: 100%; }
  </style>  
"""
  adsMediumStyle* = """
  <style>
    header {
      margin-top: 29px;
      padding-top: 22px;
    }

    footer {
      padding-bottom: 22px;
    }

    body {
      padding-right 5vw !important;
    }
  </style>
"""
  adsNoteBookStyle* = """
  <style>
    body {
      margin-right: 10%
    }
  </style>  
"""

proc useAdsGazette*(doc: var NbDoc) = 
  useStyle adsGazette

proc useAdsMedium*(doc: var NbDoc) = 
  useStyle adsMedium, adsMediumStyle

proc useAdsNoteBook*(doc: var NbDoc) = 
  useStyle adsNoteBook
  doc.highlight = gruvboxLightMedium
  

proc useAdsTufte*(doc: var NbDoc) = 
  useStyle adsTufte, adsTufteStyle
