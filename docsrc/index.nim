import nimitheme
import nimib

import ./common

when defined(readme):
  nbInitMd
else:
  nbInit(useTerminal)

nb.pathToRoot = "."
nb.favicon = faviconPaint
nb.title = "Nimitheme Docs"

nbText: """
# nimitheme
"""

nbImage(
  "https://raw.githubusercontent.com/neroist/nimitheme/main/docs/images/nimitheme.png", 
  "", # Caption is the blockquote below
  "Nimitheme presentation image"
)

nbText: """
> *Make nimib look **beautiful** with nimitheme*

Nimitheme is a Nimble package that provides additional themes for
[nimib](https://github.com/pietroppeter/nimib).

You can view the index of all the themes available in Nimitheme here:
<https://neroist.github.io/nimitheme/themes>.

In addition, support for 
[Dark Reader](https://github.com/darkreader/darkreader) and
[highlight.js](https://highlightjs.org/) are available.

## Installation

Execute this command in a terminal or shell:

```sh
nimble install nimitheme
```

## Usage

Either pass the theme into `nbInit` like so:
"""

nbCodeSkip:
  nbInit(useTerminal)

nbText: """
or call the function directly:
"""

nbCodeSkip: 
  nbInit

  nb.useTerminal()


nbText: """
### Dark Reader Support

You can enable Dark Reader in your nimib document by calling `useDarkReader`
on the `nb` variable injected by `nbInit`, like so:
"""

nbCodeSkip:
  nb.useDarkReader()

nbText: """
In addition, you can also *disable* Dark Reader via the `disableDarkReader`
proc. You can call it similarly to how you called the last function.
"""

nbCodeSkip:
  nb.disableDarkReader()

nbText: """
### Highlight.js support

You can also further stylize your code via setting a specific highlight.js
code theme (outside of Android Dark and Atom One light). You can do this by
using the `highlight=` template. For example, you can do something like this:
"""

nbCodeSkip: 
  nb.highlight = materialPalenight

nbText: """
to set the highlight.js theme your nimib document uses.

***All*** highlight.js themes are available (see
[`highlight_js.nim`](https://github.com/neroist/nimitheme/blob/main/src/nimitheme/highlight_js.nim)).

For themes that have the same name as a base16 theme, the base16 theme's
name is postfixed with `_base16`.

### Edit CSS Variables

Many CSS libraries that Nimitheme uses allow you to customize the style of
your document using CSS variables the user can manually set. Nimitheme allows
you to set such variables via the `setCssVar` template. For example, you can
do stuff like this:
"""

nbCodeSkip:
  nbInit(useTerminal)

  nb.setCssVar("global-font-size", "16px")

  # Set multiple variables at once
  nb.setCssVar({
    "primary-color": "purple",
    "secondary-color": "pink"
  })

# TODO: Add section explaining how to set favicon & nimitheme/doc.nim
# TODO: Add section explaining how to create themes

nbText: """
## License

This project is licensed under the MIT license.

###### Made with Nim with ❤️
"""

when defined(readme):
  nb.filename = "../README.md"

var doc* = nb

when isMainModule:
  nbSave

