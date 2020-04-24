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
  int start = clock();
  unsigned long long int output = fibonnaci(sequences);
  int end = clock();
  int elapsed = (end - start) / (CLOCKS_PER_SEC / 1000);
  printf("[Clang]\nFib: %dx | Result: %llu | Time: %dms\n", sequences, output, elapsed);
  return 0;
}
