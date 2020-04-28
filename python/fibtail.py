import sys
import time

def fibonnaci(n, a, b):
  if n == 0:
    return a
  elif n == 1:
    return b
  else:
    return fibonnaci(n - 1, b, a + b)

try:
  sequences = int(sys.argv[1])
  print("Python Fib: %dx" %(sequences))
  start = time.time()
  output = fibonnaci(sequences, 0, 1)
  finish = time.time()
  elapsed = (finish - start) * 1000
  print("Result: %d | Time: %.0fms" %(output, elapsed))
except Exception as err:
  print(err)