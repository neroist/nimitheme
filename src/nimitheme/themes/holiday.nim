# From: https://holidaycss.js.org/

import nimib/themes
import nimib

import ../utils

const
  holiday* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/holiday.css@0.11.0">"""
  holidayStyle* = """header:nth-child(1) { margin-top: 16px; }"""

proc useHoliday*(doc: var NbDoc) = 
  useStyle holiday, holidayStyle, useDarkMode = true
  
