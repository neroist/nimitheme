import nimitheme
import nimib

when defined(readme):
  nbInitMd
else:
  nbInit(useAwsmBigStone)

nbText: """
# nimitheme

A Nimble package that provides additional themes for [nimib](https://github.com/pietroppeter/nimib).
Currently supports [a11yana](https://a11yana.com/), [awsm](https://igoradamenko.github.io/awsm.css/), [bahunya](https://hakanalpay.com/bahunya/),
[holiday.css](https://holidaycss.js.org/), [markdown](https://markdowncss.github.io/), [marx](https://github.com/mblode/marx),
[mvp.css](https://andybrewer.github.io/mvp/), [new.css](https://newcss.net/), [pico](https://picocss.com/), [sakura](https://github.com/oxalorg/sakura),
[simple](https://simplecss.org/), [tacit.css](https://yegor256.github.io/tacit/), [style.css](https://ungoldman.com/style.css/),
and [w3.css](https://www.w3schools.com/w3css/defaulT.asp). In addition, support for [Dark Reader](https://github.com/darkreader/darkreader) and
[highlight.js](https://highlightjs.org/) are available.

## Installation

Execute this command in a terminal or shell:

```sh
nimble install https://github.com/neroist/themeib
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
*All* highlight.js themes are available (see [`highlight_js.nim`](src/nimitheme/highlight_js.nim)).

For themes that have the same name as a base16 theme, the base16 theme's name is postfixed with `_base16`.

## License

This project is licensed under the MIT license.
"""

when defined(readme):
  nb.filename = "README.md"

nbSave