# Package

version       = "0.1.0"
author        = "Jasmine"
description   = "Additional themes for nimib"
license       = "MIT"
srcDir        = "src"


# Tasks

task readme, "Build readme for nimitheme":
  exec "nim c -d:readme -r doc/index.nim"

task index, "Build index.html for nimitheme":
  exec "nim c -r doc/index.nim"

# Dependencies

requires "nim >= 1.4.0"
requires "nimib"
