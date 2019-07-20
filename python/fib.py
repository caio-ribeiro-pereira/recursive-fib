import sys
import time

print("Python Recursive Fib Benchmark...")

def fibonnaci(n):
  if (n <= 1):
    return n
  else:
    return fibonnaci(n - 1) + fibonnaci(n - 2)

try:
  sequences = int(sys.argv[1])
  print("Calculating fib %dx..." %(sequences))
  start = time.time()
  output = fibonnaci(sequences)
  finish = time.time()
  elapsed = (finish - start) * 1000
  print("Result: %d\nTime elapsed: %.3fms" %(output, elapsed))
except:
  print("Invalid arguments")