#include <stdlib.h>
#include <stdio.h>
#include <time.h>

unsigned long long int fibonacci(int n, unsigned long long int a, unsigned long long int b) {
  if (n == 0) return a;
  if (n == 1) return b;
  return fibonacci(n - 1, b, a + b);
}

int main(int argc, char *argv[]) {
  int sequences = atoi(argv[1]);
  printf("C Fib: %dx", sequences);
  int start = clock();
  unsigned long long int output = fibonacci(sequences, 0, 1);
  int end = clock();
  int elapsed = (end - start) / (CLOCKS_PER_SEC / 1000);
  printf("Result: %llu | Time: %dms\n", output, elapsed);
  return 0;
}
