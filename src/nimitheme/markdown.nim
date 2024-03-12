# From: https://markdowncss.github.io/

import nimib/themes
import nimib

import ./utils

const
  markdownSplendor* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/splendor/css/splendor.min.css">"""
  markdownRetro* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/retro/css/retro.css">"""
  markdownAir* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/air/css/air.css">"""
  markdownModest* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/markdowncss/modest/css/modest.css">"""

proc useMarkdownSplendor*(doc: var NbDoc) = 
  useStyle markdownSplendor
  doc.fixCode()

proc useMarkdownRetro*(doc: var NbDoc) = 
  useStyle markdownRetro, useDarkMode = true
  doc.fixCode()

proc useMarkdownAir*(doc: var NbDoc) = 
  useStyle markdownAir
  doc.fixCode()

proc useMarkdownModest*(doc: var NbDoc) = 
  useStyle markdownModest
  doc.fixCode()
