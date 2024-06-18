# From: https://www.furtive.co/

import nimib/themes
import nimib

import ../utils

const
  furtive* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/johno/furtive/css/furtive.min.css" />"""
  furtiveMain* = """
<main class="p2">
{{#blocks}}
{{&.}}
{{/blocks}}
</main>
"""
  furtiveHeader* = """
<header class="p2">
<div class="nb-box">
  <span>{{> header_left }}</span>
  <span>{{> header_center }}</span>
  <span>{{> header_right }}</span>
</div>
<hr>
</header>"""
  furtiveFooter* = """
<footer class="p1">
<div>
  <span>{{> footer_left }}</span>
  <span>{{> footer_center }}</span>
  <span>{{> footer_right }}</span>
</div>
</footer>
{{> source_section }}
{{> show_source_script }}"""
  furtiveSourceSection* = """<section id="source" class="p1">
<pre><code class="nohighlight nim hljs">{{{source_highlighted}}}</code></pre>
</section>"""
  furtiveShowSourceButton* = """<button class="nb-small btn btn--s" id="show" onclick="toggleSourceDisplay()">Show Source</button>"""

proc useFurtive*(doc: var NbDoc) = 
  useStyle furtive

  

  doc.partials["main"] = furtiveMain
  doc.partials["header"] = furtiveHeader
  doc.partials["footer"] = furtiveFooter
  doc.partials["source_section"] = optOut(furtiveSourceSection, "no_source")
  doc.partials["footer_right"] = optOut(furtiveShowSourceButton, "no_source")

