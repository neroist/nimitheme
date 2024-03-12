import std/strutils

import nimib

template useStyle*(stylesheet: static[string], customStyle: string = ""; useDarkMode: static[bool] = false) =
  doc.useDefault

  when useDarkMode:
    doc.darkMode

  doc.context["stylesheet"] = stylesheet

  when customStyle.len > 0:
    doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & customStyle

template useStyle*(stylesheets: static[openArray[string]], customStyle: string = ""; useDarkMode: static[bool] = false) =
  doc.useDefault

  when useDarkMode:
    doc.darkMode

  doc.context["stylesheet"] = stylesheets.join("\n")

  when customStyle.len > 0:
    doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & customStyle

template fixCode*(nb: NbDoc) =
  const customStyle = """
  <style>
    pre {
      font-size: 1.2em;
    }
  </style>
  """

  doc.partials["nbCodeSource"] = "<pre class=\"nohighlight hljs nim\">{{&codeHighlighted}}</pre>"

  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & customStyle

export join
    