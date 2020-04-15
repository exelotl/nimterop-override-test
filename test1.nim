import osproc
import nimterop/paths

proc toast(args: string) =
  let res = execCmd(toastExePath() & " " & args)
  if res != 0:
    raiseAssert("Toast failed.")

# Test 1:
# Use -O to omit the symbol
toast "--pnim -O=__ss_padding -o=socket.nim socket.h"
