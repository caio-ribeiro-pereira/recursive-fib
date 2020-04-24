const fibonacci = (n) => {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
};

try {
  const sequences = Number(process.argv[2]);
  const start = process.hrtime();
  const output = fibonacci(sequences);
  const time = process.hrtime(start);
  const elapsed = time[0] * 1000 + time[1] / 1000000;
  console.log(`[Node.js]\nFib: ${sequences}x | Result: ${output} | Time: ${elapsed.toFixed(0)}ms`);
} catch {
  console.log("[Node.js] Invalid argument");
}
