# https://www.w3schools.com/w3css/defaulT.asp

import std/tables

import nimib/themes
import nimib

import ./utils

const 
  w3 = """<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">"""
  w3SourceButton = """<button class="nb-small w3-button w3-round" id="show" onclick="toggleSourceDisplay()">Show Source</button>"""
  w3Main = """
<main class="w3-container w3-main">
{{#blocks}}
{{&.}}
{{/blocks}}
</main>
"""
  w3SourceSection = """
<section id="source" class="w3-container">
<pre><code class="nohighlight nim hljs">{{{source_highlighted}}}</code></pre>
</section>
"""
  w3Footer = """
<footer class="w3-container w3-margin-bottom">
<div class="nb-box">
  <span>{{> footer_left }}</span>
  <span>{{> footer_center }}</span>
  <span>{{> footer_right }}</span>
</div>
</footer>
{{> source_section }}
{{> show_source_script }}
{{> w3_script }}
"""
  w3Header = """
<header class="w3-container w3-margin-top">
<div class="nb-box">
  <span>{{> header_left }}</span>
  <span>{{> header_center }}</span>
  <span>{{> header_right }}</span>
</div>
<hr>
</header>
"""
  w3Script = """
<script>
  var tables = document.getElementsByTagName("table");
  var quotes = document.getElementsByTagName("blockquote");
  var uls = document.getElementsByTagName("ul");
  var pres = document.getElementsByTagName("pre");
  var codes = document.getElementsByTagName("code");

  for (let i = 0; i < tables.length; i++) {
    tables[i].classList.add("w3-table");
    tables[i].classList.add("w3-table-all");
    tables[i].classList.add("w3-hoverable");
  }

  for (let i = 0; i < uls.length; i++) {
    uls[i].classList.add("w3-ul");
  }

  for (let i = 0; i < quotes.length; i++) {
    quotes[i].classList.add("w3-panel");
    quotes[i].classList.add("w3-leftbar");
    quotes[i].classList.add("w3-light-grey");
  }

  for (let i = 0; i < pres.length; i++) {
    if (!(pres[i].parentElement.id === "source")) {
      pres[i].classList.add("w3-code");
    }
  }

  for (let i = 0; i < codes.length; i++) {
    if (!(codes[i].parentElement.tagName === "PRE")) {
      codes[i].classList.add("w3-codespan");
      codes[i].classList.add("w3-round");      
    } else {
      codes[i].classList.add("w3-round-large");
    }
  }
</script>
"""

  w3Style = """
<style>
  .w3-table {
    margin-top: 16px;
    margin-bottom: 16px;
  }
</style>
"""

proc useW3*(doc: var NbDoc) =
  useStyle w3, w3Style
  doc.fixCode()

  doc.partials["footer_right"] = w3SourceButton
  doc.partials["main"] = w3Main
  doc.partials["source_section"] = optOut(w3SourceSection, "no_source")
  doc.partials["footer"] = w3Footer
  doc.partials["header"] = w3Header
  doc.partials["w3_script"] = '\n' & w3Script
