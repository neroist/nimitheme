import nimib/themes
import nimib

const
  markdownSplendor* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/splendor/css/splendor.min.css">"""
  markdownRetro* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/retro/css/retro.css">"""
  markdownAir* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/air/css/air.css">"""
  markdownModest* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/modest/css/modest.css">"""

proc useMarkdownSplendor*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = markdownSplendor

proc useMarkdownRetro*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = markdownRetro

proc useMarkdownAir*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = markdownAir

proc useMarkdownModest*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = markdownModest