import sys
import time

def fibonnaci(n):
  if (n <= 1):
    return n
  else:
    return fibonnaci(n - 1) + fibonnaci(n - 2)

try:
  sequences = int(sys.argv[1])
  start = time.time()
  output = fibonnaci(sequences)
  finish = time.time()
  elapsed = (finish - start) * 1000
  print("[Python]\nFib: %dx | Result: %d | Time: %.0fms" %(sequences, output, elapsed))
except:
  print("[Python] Invalid arguments")