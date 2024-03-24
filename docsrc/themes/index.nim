import std/strutils
import std/os

import nimib

nbInit

nb.title = "Nimitheme Index"

nbText: """
## Nimitheme Index

Here is an index of all the available themes in nimitheme:
"""

nbText:
  var text: string
  
  proc toName(filename: string): string =
    for word in filename.split('_'):
      result.add word.capitalizeAscii() & " "

    # remove space at the end
    result[0..^2]

  proc print(dir: string) = 
    for file in walkDir(currentSourcePath().parentDir() / dir, relative=true):
      let
        pieces = file.path.replace('\\', '/').splitFile()
        path = file.path.changeFileExt("html")

      if pieces.name in ["index", "gendoc"]: continue
      if pieces.ext != ".nim": continue

      var str = "  - [$#]($#/$#)\n" % [pieces.name.toName(), dir, path]
      
      if dir.len == 0:
        if file.kind != pcFile: continue
        if DirSep in path: continue

        str = "- [$#]($#)\n" % [pieces.name.toName(), path]

      text.add str
    
  for dir in walkDir(currentSourcePath().parentDir(), relative=true):
    if dir.kind != pcDir: continue

    text.add "- [**$#**]($#)\n" % [dir.path.toName(), dir.path & "/"]
    print(dir.path)

  print("")

  text

nbSave
