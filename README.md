
# nimitheme


![nimitheme presentation image](https://raw.githubusercontent.com/neroist/nimitheme/main/docs/images/nimitheme.png)




> *Make nimib look **beautiful** with nimitheme*

Nimitheme is a Nimble package that provides additional themes for
[nimib](https://github.com/pietroppeter/nimib).

You can view the index of all the themes available in nimitheme here:
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



```nim
nbInit(useAwsmBigStone)
```




or call the function directly:



```nim
nbInit

nb.useAwsmBigStone()
```




### Dark Reader Support

You can enable Dark Reader in your nimib document by calling `useDarkReader`
on the `nb` variable injected by `nbInit`, like so:



```nim
nb.useDarkReader()
```




### Highlight.js support

You can also further stylize your code via setting a specific highlight.js
code theme (outside of Android Dark and Atom One light). You can do this by
using the `highlight=` template. For example, you can do something like this:



```nim
nb.highlight = materialPalenight
```




to set the highlight.js theme your nimib document uses.

***All*** highlight.js themes are available (see
[`highlight_js.nim`](src/nimitheme/highlight_js.nim)).

For themes that have the same name as a base16 theme, the base16 theme's
name is postfixed with `_base16`.

### Edit CSS Variables

Many CSS libraries that nimitheme uses allow you to customize the style of
your document using CSS variables the user can manually set. Nimitheme allows
you to set such variables via the `setCssVar` template. For example, you can
do stuff like this:



```nim
nbInit(useTerminal)

nb.setCssVar("global-font-size", "16px")

# Set multiple variables at once
nb.setCssVar({
  "primary-color": "purple",
  "secondary-color": "pink"
})
```




## License

This project is licensed under the MIT license.

###### Made with Nim with ❤️

