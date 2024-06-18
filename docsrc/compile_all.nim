import std/os

import nimib/renders
import nimib

import ./all_themes

proc compile*(doc: var NbDoc): string =
  ## Compile NbDoc to its markdown/html instead of writing a file
  
  doc.nbCollectAllNbJs()

  doc.context.searchDirs(doc.templateDirs)
  doc.context.searchTable(doc.partials)

  doc.render()

proc writeDoc*(doc: var NbDoc, dir: string) =
  let
    dest = (dir / doc.filename)
    destDir = dest.parentDir

  if not dirExists(destDir):
    createDir(destDir)

  writeFile(dest, doc.compile())

proc writeDocs*(docs: var openArray[NbDoc], dir: string) =
  for doc in docs.mitems():
    writeDoc doc, dir

# homeDir is set to docs/ from nimib.toml
# which is set as the cwd by nimib
writeDocs(allDocs, ".")
