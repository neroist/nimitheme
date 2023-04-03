import nimib/themes
import nimib

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
      padding-top: 22px;
    }
  </style>
"""

proc useAdsGazette*(doc: var NbDoc) = 
  useStyle adsGazette

proc useAdsMedium*(doc: var NbDoc) = 
  useStyle adsMedium, adsMediumStyle

proc useAdsNoteBook*(doc: var NbDoc) = 
  useStyle adsNoteBook

proc useAdsTufte*(doc: var NbDoc) = 
  useStyle adsTufte, adsTufteStyle
