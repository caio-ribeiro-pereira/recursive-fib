console.log("Nodejs Recursive Fib Benchmark...")

const fibonacci = (n) => {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
};

try {
  const sequences = Number(process.argv[2]);
  console.log(`Calculating fib ${sequences}x...`);
  console.time("Time elapsed");
  const output = fibonacci(sequences);
  console.log(`Result: ${output}`);
  console.timeEnd("Time elapsed");
} catch {
  console.log("Invalid argument");
}
