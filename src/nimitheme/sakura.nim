import nimib/themes
import nimib

import highlight_js

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
  doc.useDefault()
  doc.context["stylesheet"] = sakura
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraDarkSolarized*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = solarizedDark
  doc.context["stylesheet"] = sakuraDarkSolarized
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraDark*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = sakuraDark
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraEarthly*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = sakuraEarthly
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraInk*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = sakuraInk
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraPink*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = sakuraPink
  doc.context["highlight"] = horizonLight
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle

proc useSakuraVader*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = sakuraVader
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & sakuraStyle
