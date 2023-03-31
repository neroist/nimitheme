import nimib/themes
import nimib

import ./utils

const
  adsGazette* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-gazette.min.css" />"""
  adsMedium* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-medium.min.css" />"""
  adsNoteBook* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-notebook.min.css" />"""
  adsTufte* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/dohliam/dropin-minimal-css/min/ads-tufte.min.css" />"""
  adsTufteStyle* = """
  <style>
    body { padding-left: 0px; }
    main { padding-left: 12.5%; }
    footer { width: 100%; }
  </style>  
"""

proc useAdsGazette*(doc: var NbDoc) = 
  useStyle adsGazette

proc useAdsMedium*(doc: var NbDoc) = 
  useStyle adsMedium

proc useAdsNoteBook*(doc: var NbDoc) = 
  useStyle adsNoteBook

proc useAdsTufte*(doc: var NbDoc) = 
  useStyle adsTufte, adsTufteStyle
