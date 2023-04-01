import nimib/themes
import nimib

import ./utils

const
  holiday* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/holiday.css@0.11.0">"""

proc useHoliday*(doc: var NbDoc) = 
  useStyle holiday, useDarkMode = true
