import nimib/themes
import nimib

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
  doc.useDefault()
  doc.context["stylesheet"] = adsGazette

proc useAdsMedium*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = adsMedium

proc useAdsNoteBook*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = adsNoteBook

proc useAdsTufte*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = adsTufte
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & adsTufteStyle

