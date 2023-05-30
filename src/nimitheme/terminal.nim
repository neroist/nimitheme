# From: https://terminalcss.xyz/

import nimib/themes
import nimib

import ./utils

const
  terminal* = """<link rel="stylesheet" href="https://unpkg.com/terminal.css@0.7.2/dist/terminal.min.css" />"""
  terminalDocument* = """
<!DOCTYPE html>
<html lang="en-us">
{{> head }}
<body class="terminal">
{{> header }}
{{> left }}
{{> main }}
{{> right }}
{{> footer }}
</body>
</html>"""
  terminalMain* = """
<main class="container">
{{#blocks}}
{{&.}}
{{/blocks}}
</main>
"""
  terminalHeader* = """
<header class="container terminal-nav">
<div class="nb-box terminal-menu">
  <span>{{> header_left }}</span>
  <span>{{> header_center }}</span>
  <span>{{> header_right }}</span>
</div>
<hr>
</header>"""
  terminalFooter* = """
<footer class="container terminal-nav">
<div class="nb-box terminal-menu">
  <div class="terminal-logo">
    <span class="logo terminal-prompt">{{> footer_left }}</span>
  </div>
  <span>{{> footer_center }}</span>
  <span>{{> footer_right }}</span>
</div>
</footer>
{{> source_section }}
{{> show_source_script }}"""
  terminalSourceSection* = """<section id="source" class="container">
<pre><code class="nohighlight nim hljs">{{{source_highlighted}}}</code></pre>
</section>"""
  terminalShowSourceButton* = """<button class="nb-small btn btn-small" id="show" onclick="toggleSourceDisplay()">Show Source</button>"""

proc useTerminal*(doc: var NbDoc) = 
  useStyle terminal

  doc.partials["document"] = terminalDocument
  doc.partials["main"] = terminalMain
  doc.partials["header"] = terminalHeader
  doc.partials["footer"] = terminalFooter
  doc.partials["source_section"] = optOut(terminalSourceSection, "no_source")
  doc.partials["footer_right"] = optOut(terminalShowSourceButton, "no_source")
