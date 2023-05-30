import std/os

# Package

version       = "0.4.0"
author        = "Jasmine"
description   = "Make nimib look beautiful with nimitheme"
license       = "MIT"
srcDir        = "src"


# Tasks

task readme, "Build readme for nimitheme":
  exec "nim r -d:readme docsrc/index.nim"

task index, "Build index.html for nimitheme":
  exec "nim r docsrc/index.nim"

task ri, "Build both index.html and readme for nimitheme":
  readmeTask()
  indexTask()

task docs, "Build theme docs for nimitheme":
  let theme = if commandLineParams()[^1] in ["docs", "*"]: 
      "docsrc/themes"
    else:
      "docsrc/themes/" & commandLineParams()[^1]

  exec "nim r docsrc/index.nim"

  if dirExists(theme):
    for file in walkDirRec(theme):
      if file.extractFilename() notin ["gendoc.nim"] and file.splitFile().ext == ".nim":
        exec "nim r " & file 
  else:
    exec "nim r " & theme
    
# Dependencies

requires "nim >= 1.4.0"
requires "nimib"
