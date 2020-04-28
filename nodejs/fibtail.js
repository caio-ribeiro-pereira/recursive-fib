const fibonacci = (n, a, b) => {
  if (n === 0) return a;
  if (n === 1) return b;
  return fibonacci(n - 1, b, a + b);
};

try {
  const sequences = Number(process.argv[2]);
  const start = process.hrtime();
  const output = fibonacci(sequences, 0, 1);
  const time = process.hrtime(start);
  const elapsed = time[0] * 1000 + time[1] / 1000000;
  console.log(`Node.js Fib: ${sequences}x\nResult: ${output} | Time: ${elapsed.toFixed(0)}ms`);
} catch (e) {
  console.log(e);
}
