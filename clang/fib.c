#include <stdlib.h>
#include <stdio.h>
#include <time.h>

unsigned long long int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

int main(int argc, char *argv[]) {
  int sequences = atoi(argv[1]);
  int start = clock();
  unsigned long long int output = fibonacci(sequences);
  int end = clock();
  int elapsed = (end - start) / (CLOCKS_PER_SEC / 1000);
  printf("C Fib: %dx\nResult: %llu | Time: %dms\n", sequences, output, elapsed);
  return 0;
}
