#include <stdlib.h>
#include <stdio.h>
#include <time.h>

unsigned long long int fibonnaci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonnaci(n - 1) + fibonnaci(n - 2);
}

int main(int argc, char *argv[]) {
  int sequences = atoi(argv[1]);
  printf("C Recursive Fib Benchmark...\n");
  printf("Calculating fib %dx...\n", sequences);
  float start = clock();
  unsigned long long int output = fibonnaci(sequences);
  float end = clock();
  float elapsed = (end - start) / (CLOCKS_PER_SEC / 1000);
  printf("Result %llu\nTime elapsed: %.3fms\n", output, elapsed);
  return 0;
}
