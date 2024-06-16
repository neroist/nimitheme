import nimib

template genThemeDoc*(theme: proc (doc: var NbDoc), themeName: string) {.dirty.} =
  nb.title = "$1 Theme" % themeName

  nbText: """
  # This page uses the $1 theme!

  # $1!
  ## $1
  ### $1
  #### $1
  ##### $1
  ###### $1...

  ## Using the theme

  The code used to enable this theme was:
  """ % themeName

  nbCodeSkip:
    nbInit(theme)

  nbText: """
  Although, you could do somthing like this instead:
  """

  nbCodeSkip:
    nbInit

    nb.theme()

  nbText: """
  ## Lists

  1. List Item 1
  2. List Item 2
  3. List Item 3
      * Nested Unordered List Item 3.1
      * Nested Unordered List Item 3.2
      * Nested Unordered List Item 3.2

  * Unordered List Item 1
  * Unordered List Item 2
  * Unordered List Item 3
      1. Nested Ordered List Item 3.1
      2. Nested Ordered List Item 3.2
      3. Nested Ordered List Item 3.3
  """

  nbText: """
  ## Images

  Here's a complementary free image for you:
  """

  nbImage(
    "https://picsum.photos/600",
    "",
    "random image"
  )

  nbText: """
  ## Code

  Also, before I forget, here's some `code`:

  *(Beware however, this code may contain some [**secrets**](https://pietroppeter.github.io/nimib/hello.html))*
  """

  let secret = [104, 101, 108, 108, 111, 44, 32, 119, 111, 114, 108, 100]

  nbCode:
    func decode(secret: openArray[int]): string =
      ## classified by NSA as <strong>TOP SECRET</strong>
      for c in secret:
        result.add char(c)

  nbCode:
    let msg = decode secret

    echo msg

  # TODO add audio and video when they're added to nimib

  nbText: """
  > Don't I look ***beautiful***?
  """

  var doc* = nb
