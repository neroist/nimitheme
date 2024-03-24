import std/strutils

import nimib

template fixCode*(nb: var NbDoc, style: bool = false) =
  when style:
    const customStyle = """
    <style>
      pre {
        font-size: 1.2em;
      }
    </style>
    """
    
    nb.context["nb_style"] = nb.context["nb_style"].vString & '\n' & customStyle
  
  const sourceSection0 = """<section id="source"><pre class="nohighlight nim hljs">{{{source_highlighted}}}</pre></section>"""

  nb.partials["nbCodeSource"] = "<pre class=\"nohighlight hljs nim\">{{&codeHighlighted}}</pre>"
  doc.partials["source_section"] = optOut(sourceSection0, "no_source")

template useStyle*(stylesheet: static[string], customStyle: string = ""; useDarkMode = false, fixCode: static[bool] = true) =
  doc.useDefault

  when useDarkMode:
    doc.darkMode

  doc.context["stylesheet"] = stylesheet

  when customStyle.len > 0:
    doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & customStyle

  when fixCode:
    utils.fixCode(doc)

template useStyle*(stylesheets: static[openArray[string]], customStyle: string = ""; useDarkMode = false, fixCode: static[bool] = true) =
  doc.useDefault

  when useDarkMode:
    doc.darkMode

  doc.context["stylesheet"] = stylesheets.join("\n")

  when customStyle.len > 0:
    doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & customStyle

  when fixCode:
    utils.fixCode(doc)

export join
    