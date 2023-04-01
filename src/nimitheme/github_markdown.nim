import nimib/themes
import nimib

import ./utils

const
  githubMarkdown* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/sindresorhus/github-markdown-css/github-markdown.css" />"""
  githubMarkdownDark* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/sindresorhus/github-markdown-css/github-markdown-dark.css" />"""
  githubMarkdownLight* = """<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/sindresorhus/github-markdown-css/github-markdown-light.css" />"""
  githubMarkdownDocument* = """
<!DOCTYPE html>
<html lang="en-us">
{{> head }}
<body class="markdown-body">
{{> header }}
{{> left }}
{{> main }}
{{> right }}
{{> footer }}
</body>
</html> 
"""
  githubMarkdownStyle* = """
<style>
	.markdown-body {
		box-sizing: border-box;
		min-width: 200px;
		max-width: 980px;
		margin: 0 auto;
		padding: 45px;
	}

	@media (max-width: 767px) {
		.markdown-body {
			padding: 15px;
		}
	}
</style>
"""

proc useGithubMarkdown*(doc: var NbDoc) = 
  useStyle githubMarkDown, githubMarkdownStyle
  doc.partials["document"] = githubMarkdownDocument

proc useGithubMarkdownDark*(doc: var NbDoc) = 
  useStyle githubMarkDownDark, githubMarkdownStyle, useDarkMode = true
  doc.partials["document"] = githubMarkdownDocument

proc useGithubMarkdownLight*(doc: var NbDoc) = 
  useStyle githubMarkDownLight, githubMarkdownStyle
  doc.partials["document"] = githubMarkdownDocument
