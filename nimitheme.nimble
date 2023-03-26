# Package

version       = "0.1.0"
author        = "Jasmine"
description   = "Additional themes for nimib"
license       = "MIT"
srcDir        = "src"


# Tasks

task readme, "Build readme for nimitheme":
  exec "nim r -d:readme docs/index.nim"

task docs, "Build html docs for nimitheme":
  exec "nim r docs/index.nim"

# Dependencies

requires "nim >= 1.4.0"
requires "nimib"
