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
  float start = clock();
  unsigned long long int output = fibonnaci(sequences);
  float end = clock();
  float elapsed = (end - start) / (CLOCKS_PER_SEC / 1000);
  printf("[C] Fib %dx | Result: %llu | Time: %.3fms\n", sequences, output, elapsed);
  return 0;
}
