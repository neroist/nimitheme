
# nimitheme


![nimitheme presentation image](https://raw.githubusercontent.com/neroist/nimitheme/main/docs/images/nimitheme.png)




> *Make nimib look **beautiful** with nimitheme*

Nimitheme is a Nimble package that provides additional themes for [nimib](https://github.com/pietroppeter/nimib).
Currently supports the following themes:
  - [a11yana](https://a11yana.com/)
  - ads (couldn't find a link)
  - [almond](https://alvaromontoro.github.io/almond.css/)
  - [attri](https://raj457036.github.io/attriCSS/)
  - [awsm](https://igoradamenko.github.io/awsm.css/)
  - [axist](https://ruanmartinelli.github.io/axist/)
  - [bahunya](https://hakanalpay.com/bahunya/)
  - [bare](https://barecss.com/)
  - [basic](https://vladocar.github.io/Basic.css/)
  - [bonsai](https://www.bonsaicss.com/)
  - [downstyler](https://waldyrious.net/downstyler/)
  - [github-markdown](https://github.com/sindresorhus/github-markdown-css)
  - [holiday.css](https://holidaycss.js.org/)
  - [latex.css](https://davidrzs.github.io/latexcss/)
  - [markdown](https://markdowncss.github.io/)
  - [marx](https://github.com/mblode/marx)
  - [mercury](https://wmeredith.github.io/MercuryCSS/)
  - [mvp.css](https://andybrewer.github.io/mvp/)
  - [new.css](https://newcss.net/)
  - [nimibujo](https://github.com/zetashift/nimibujo)
  - [no-class.css](https://davidpaulsson.github.io/no-class/)
  - [pico](https://picocss.com/)
  - [sakura](https://github.com/oxalorg/sakura)
  - [simple](https://simplecss.org/)
  - [tacit.css](https://yegor256.github.io/tacit/)
  - [style.css](https://ungoldman.com/style.css/)
  - [w3.css](https://www.w3schools.com/w3css/defaulT.asp)
  - [W3c Core Styles](https://www.w3.org/StyleSheets/Core/Overview)
  - [writ.css](https://writ.cmcenroe.me/)
  - [YoRHa](https://github.com/metakirby5/yorha)

You can view the *true* index of all themes available in nimitheme [here](https://neroist.github.io/nimitheme/themes).

In addition, support for [Dark Reader](https://github.com/darkreader/darkreader) and
[highlight.js](https://highlightjs.org/) are available.

## Installation

Execute this command in a terminal or shell:

```sh
nimble install nimitheme
```

## Usage

Either pass the theme into `nbInit` like so:



```nim
nbInit(useAwsmBigStone)
```




or call the function directly:



```nim
nbInit

nb.useAwsmBigStone()
```




### Dark Reader Support

You can enable Dark Reader in your nimib document by calling `useDarkReader` on the `nb` variable injected by `nbInit`, like so:



```nim
nb.useDarkReader()
```




### Highlight.js support

You can also easily set the highlight.js code theme using `highlight=`. For example, you can do something like this:



```nim
nb.highlight = materialPalenight
```




*All* highlight.js themes are available (see [`highlight_js.nim`](https://github.com/neroist/nimitheme/blob/main/src/nimitheme/highlight_js.nim)).

For themes that have the same name as a base16 theme, the base16 theme's name is postfixed with `_base16`.

## License

This project is licensed under the MIT license.

###### Made with Nim with ❤️

