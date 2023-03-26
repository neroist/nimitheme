# themeib
A Nim package that provides additional themes for nimib. Currently supports [a11yana](https://a11yana.com/), [awsm](https://igoradamenko.github.io/awsm.css/), 
[bahunya](https://hakanalpay.com/bahunya/), [holiday.css](https://holidaycss.js.org/), [markdown](https://markdowncss.github.io/), 
[marx](https://github.com/mblode/marx), [mvp.css](https://andybrewer.github.io/mvp/), [new.css](https://newcss.net/), [pico](https://picocss.com/), 
[sakura](https://github.com/oxalorg/sakura), [simple](https://simplecss.org/), style.css, and [w3.css](https://www.w3schools.com/w3css/defaulT.asp).
In addition, support for Dark Reader and highlight.js are available.

## Installation
Execute this command in a terminal or shell:

```sh
nimble install https://github.com/neroist/themeib
```

## Usage
Either pass the theme into `nbInit` like so:

```nim
nbInit(useAwsmBigStone)

...
```

or call the function directly:

```nim
nbInit

nb.useAwsmBigStone()

...
```

## License

This project is licensed under the MIT license.
