import strutils
import nimterop/plugin

proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
  echo "onSymbol ", sym.name
  if sym.name.startsWith("_"):
    sym.name = ""
