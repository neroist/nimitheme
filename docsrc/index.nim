import nimitheme
import nimib

when defined(readme):
  nbInitMd
else:
  nbInit(useAwsmBigStone)

nb.context["path_to_root"] = "."
nb.title = "Nimitheme Docs"

nbText: """
# nimitheme
"""

nbImage(
  "https://raw.githubusercontent.com/neroist/nimitheme/main/docs/images/nimitheme.png", 
  "", # Caption is the blockquote below
  "nimitheme presentation image"
)

nbText: """
> *Make nimib look **beautiful** with nimitheme*

Nimitheme is a Nimble package that provides additional themes for [nimib](https://github.com/pietroppeter/nimib).

You can view the index of all the themes available in nimitheme here: <https://neroist.github.io/nimitheme/themes>.

In addition, support for [Dark Reader](https://github.com/darkreader/darkreader) and
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
  nbInit(useAwsmBigStone)

nbText: """
or call the function directly:
"""

nbCodeSkip: 
  nbInit

  nb.useAwsmBigStone()


nbText: """
### Dark Reader Support

You can enable Dark Reader in your nimib document by calling `useDarkReader` on the `nb` variable injected by `nbInit`, like so:
"""

nbCodeSkip:
  nb.useDarkReader()

nbText: """
### Highlight.js support

You can also easily set the highlight.js code theme using `highlight=`. For example, you can do something like this:
"""

nbCodeSkip: 
  nb.highlight = materialPalenight

nbText: """
*All* highlight.js themes are available (see [`highlight_js.nim`](https://github.com/neroist/nimitheme/blob/main/src/nimitheme/highlight_js.nim)).

For themes that have the same name as a base16 theme, the base16 theme's name is postfixed with `_base16`.

## License

This project is licensed under the MIT license.

###### Made with Nim with ❤️
"""

when defined(readme):
  nb.filename = "../README.md"

nbSave
