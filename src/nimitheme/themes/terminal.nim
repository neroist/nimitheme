# From: https://terminalcss.xyz/

import nimib/themes
import nimib

import ../utils
import ../css

const
  terminal* = """<link rel="stylesheet" href="https://unpkg.com/terminal.css@0.7.4/dist/terminal.min.css" />"""
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

proc useTerminalImpl*(doc: var NbDoc, useDarkMode: static bool = false) =
  useStyle terminal, useDarkMode = useDarkMode
  
  doc.partials["document"] = terminalDocument
  doc.partials["main"] = terminalMain
  doc.partials["header"] = terminalHeader
  doc.partials["footer"] = terminalFooter
  doc.partials["source_section"] = optOut(terminalSourceSection, "no_source")
  doc.partials["footer_right"] = optOut(terminalShowSourceButton, "no_source")

proc useTerminal*(doc: var NbDoc) =
  useTerminalImpl(doc)

proc useTerminalDark*(doc: var NbDoc) =
  useTerminalImpl(doc, useDarkMode = true)

  doc.setCssVars({
    "global-font-size": "15px",
    "global-line-height": "1.4em",
    "global-space": "10px",
    "font-stack": "Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif",
    "mono-font-stack": "Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif",
    "background-color": "#222225",
    "page-width": "60em",
    "font-color": "#e8e9ed",
    "invert-font-color": "#222225",
    "secondary-color": "#a3abba",
    "tertiary-color": "#a3abba",
    "primary-color": "#62c4ff",
    "error-color": "#ff3c74",
    "progress-bar-background": "#3f3f44",
    "progress-bar-fill": "#62c4ff",
    "code-bg-color": "#3f3f44",
    "input-style": "solid",
    "display-h1-decoration": "none"
  })

proc useTerminalSans*(doc: var NbDoc) =
  useTerminalImpl(doc)
  
  doc.setCssVars({
    "global-font-size": "15px",
    "global-line-height": "1.4em",
    "font-stack": "-apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol",
    "input-style": "solid"
  })

proc useTerminalSansDark*(doc: var NbDoc) =
  useTerminalImpl(doc, useDarkMode = true)

  doc.setCssVars({
    "global-font-size": "15px",
    "global-line-height": "1.4em",
    "font-stack": "-apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol",
    "background-color": "#222225",
    "page-width": "60em",
    "font-color": "#e8e9ed",
    "invert-font-color": "#222225",
    "secondary-color": "#a3abba",
    "tertiary-color": "#a3abba",
    "primary-color": "#62c4ff",
    "error-color": "#ff3c74",
    "progress-bar-background": "#3f3f44",
    "progress-bar-fill": "#62c4ff",
    "code-bg-color": "#3f3f44",
    "input-style": "solid",
    "display-h1-decoration": "none"
  })
