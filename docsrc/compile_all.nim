import std/macros
import std/hashes
import std/os

macro importExportDocs(ignoreDirs: static openArray[string], ignoreFiles, nbDocVar: static string): untyped =
  ## Imports and export all files in toki/**
  ## 
  ## Adds all nimib documents to exported `allDocs` array
  ## 
  ## :ignoreDirs: Which directories to ignore, relative to `toki/`
  ## :nbDocVar:   The name of the exported NbDoc across files
  
  result = newStmtList(
    # imports and exports
    newNimNode(nnkImportStmt),
    newNimNode(nnkExportStmt),

    # exported `allDocs` array
    newVarStmt(postfix(ident"allDocs", "*"), newNimNode(nnkBracket))
  )

  const
    # its shorter for me to set this to a variable since i use inlay hints
    currentSourceDir = currentSourcePath().parentDir
    self = currentSourcePath().splitFile().name

  for file in walkDirRec(currentSourceDir, relative=true):
    let (fileDir, fileName, fileExt) = file.splitFile()
    
    # lets not import ourself now
    if fileName == self: continue

    # must be all nim files
    if fileExt != ".nim": continue

    case fileDir
    of "": # current directory
      result[0].add ident(fileName)
      result[1].add ident(fileName)

      # access var section array
      # nnkVarSection -> nnkIdentDefs -> nnkBracket (array)
      result[2][0][^1].add newDotExpr(ident(fileName), ident nbDocVar)
    elif fileDir in ignoreDirs: discard
    else:
      let
        path = ident fileDir & '/' & fileName

        # uses hashes for unique identifiers
        # `fileDir` is prepended for debug purposes
        alias = ident fileDir & $hash(file)

      result[0].add infix(path, "as", alias)
      result[1].add alias

      # ditto, same here
      result[2][0][^1].add newDotExpr(alias, ident nbDocVar)

importExportDocs(
  ignoreDirs = ["common"],
  nbDocVar   = "doc"
)
