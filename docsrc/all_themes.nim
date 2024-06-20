import std/strutils
import std/macros
import std/hashes
import std/os

macro importExport(root: static string, ignoreDirs, ignoreFiles: static openArray[string], nbDocVar: static string): untyped =
  ## Imports and export all files in `root`
  ## 
  ## Adds all nimib documents to exported `allDocs` array
  ## 
  ## :root: Set root directory for imports.
  ## :ignoreDirs: Which directories to ignore, relative to `root`
  ## :ignoreFiles: Which files to ignore, relative to `root`
  ## :nbDocVar:   The name of the exported NbDoc across files

  result = newStmtList(
    # imports and exports
    newNimNode(nnkImportStmt),
    newNimNode(nnkExportStmt),

    # exported `allDocs` array
    newVarStmt(postfix(ident"allDocs", "*"), newNimNode(nnkBracket))
  )

  const self = currentSourcePath().splitFile().name

  for file in walkDirRec(root, relative=true):
    let
      file = file.replace(DirSep, '/') # normalize path separators between OSes
      (fileDir, fileName, fileExt) = file.splitFile()

    if
      # lets not import ourself now
      fileName == self or
      # must be all nim files
      fileExt != ".nim" or
      # ignore files from `ignoreFiles`
      file in ignoreFiles or
      # ignore dirs from `ignoreDirs`
      fileDir in ignoreDirs:
        continue

    # the files may have similar names (e.g dir1/me.nim, dir2/me.nim), in 
    # such case we append a unique string to each import in an `as` clause
    # (so we can refer to it later during exporting & `allDocs`)
    let
      path = ident fileDir / fileName

      # uses hashes from full file path for unique identifiers
      # `file` is prepended for debug purposes
      alias = ident file & $hash(file)

    result[0].add infix(path, "as", alias)
    result[1].add alias

    # access var section array
    # nnkVarSection -> nnkIdentDefs -> nnkBracket (array)
    result[2][0][^1].add newDotExpr(alias, ident nbDocVar)

const currentSourceDir = currentSourcePath().parentDir

importExport(
  root        = currentSourceDir,
  ignoreDirs  = [],
  ignoreFiles = ["themes/gendoc.nim", "compile_all.nim", "common.nim"],
  nbDocVar    = "doc"
)
