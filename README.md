# themeib
A Nim package that provides additional themes for nimib. Currently supports [a11yana](https://a11yana.com/), [awsm](https://igoradamenko.github.io/awsm.css/), [bahunya](https://hakanalpay.com/bahunya/), [holiday.css](https://holidaycss.js.org/), [markdown](https://markdowncss.github.io/), [marx](https://github.com/mblode/marx), mvp, new.css, pico, sakura, simple,
style, and w3.css.
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
