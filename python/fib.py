import sys
import time

def fibonnaci(n):
  if (n <= 1):
    return n
  else:
    return fibonnaci(n - 1) + fibonnaci(n - 2)

try:
  sequences = int(sys.argv[1])
  print("Python Fib: %dx" %(sequences))
  start = time.time()
  output = fibonnaci(sequences)
  finish = time.time()
  elapsed = (finish - start) * 1000
  print("Result: %d | Time: %.0fms" %(output, elapsed))
except Exception as err:
  print(err)