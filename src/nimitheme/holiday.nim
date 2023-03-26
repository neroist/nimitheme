import nimib/themes
import nimib

const
  holiday* = """<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/holiday.css@0.11.0">"""

proc useHoliday*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["stylesheet"] = holiday
