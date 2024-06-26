import std/strutils

import nimib

proc addCss*(doc: var NbDoc; style: string) =
  doc.context["nb_style"] = doc.context["nb_style"].vString &
                            '\n' & "<style>\n" & style & "\n</style>"

proc getCssStr*(variable, value: string): string = 
  """

  <style>
    :root {
      --$1:$2;
    }
  </style>""" % [variable, value]

proc getCssStr*(vals: openArray[tuple[variable, value: string]]): string = 
  result = """

  <style>
    :root {"""

  for val in vals:
    result.add "\n      --$1:$2;" % [val.variable, val.value]

  result.add """
    
    }
  </style>"""


proc setCssVar*(doc: var NbDoc; variable, value: string) = 
  doc.context["nb_style"] = doc.context["nb_style"].vString & getCssStr(variable, value)

proc setCssVars*(doc: var NbDoc; vals: openArray[tuple[variable, value: string]]) = 
  doc.context["nb_style"] = doc.context["nb_style"].vString & getCssStr(vals)
