import std/tables

import nimib

const 
  darkReader* = """
  <script src="https://cdn.jsdelivr.net/npm/darkreader/darkreader.min.js"></script>
  <script>
    DarkReader.setFetchMethod(window.fetch)
    DarkReader.enable();
  </script>
"""
  noDarkreader* = """
  <meta name="darkreader-lock">
"""

proc useDarkReader*(doc: var NbDoc) = 
  if not doc.partials.contains("head_other"):
    doc.partials["head_other"] = darkReader
  else:
    doc.partials["head_other"] &= darkReader

proc disableDarkreader*(doc: var NbDoc) =
  if not doc.partials.contains("head_other"):
    doc.partials["head_other"] = noDarkreader
  else:
    doc.partials["head_other"] &= noDarkreader
