import std/os

# Package

version       = "0.1.0"
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

task docs, "Build ALL docs for nimitheme":
  exec "nim r docsrc/index.nim"

  for file in walkDirRec("docsrc/themes"):
    if file.extractFilename() notin ["gendoc.nim", "nim.cfg"] and file.splitFile().ext == ".nim":
      exec "nim r " & file  
    
# Dependencies

requires "nim >= 1.4.0"
requires "nimib"
