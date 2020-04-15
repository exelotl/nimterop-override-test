import nimterop/paths
import osproc

proc toast(args: string) =
  let res = execCmd(toastExePath() & " " & args)
  if res != 0:
    raiseAssert("Toast failed.")

# Test 2:
# Use a plugin to discard the symbol (by setting the name to "")
toast "--pnim --pluginSourcePath=plugin.nim -o=socket.nim socket.h"
